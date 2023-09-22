// Dart imports:
import 'dart:async';
import 'dart:io';

// Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:core/logger/app_logger.dart';
import 'package:injectable/injectable.dart';

@singleton
class NetworkConnectivity {
  final StreamController<bool> _connectionChangeController =
      StreamController<bool>.broadcast();
  final Connectivity _connectivity = Connectivity();

  bool _hasConnection = false;
  bool _isInitialised = false;

  bool get hasConnection => _hasConnection;

  Stream<bool> get connectionChange {
    if (!_isInitialised) {
      throw Exception(
        'NetworkConnectivity must initialise before.',
      );
    }
    return _connectionChangeController.stream;
  }

  Future initialize() async {
    AppLogger.log('Connectivity initialising..');
    _isInitialised = true;
    _connectivity.onConnectivityChanged.listen(_connectionChange);
    await checkConnection();
  }

  Future<bool> checkConnection() async {
    var connectivityResult = await _connectivity.checkConnectivity();
    _hasConnection = await _checkInternetStatus(connectivityResult);
    await _connectionChange(connectivityResult);
    return _hasConnection;
  }

  Future<void> _connectionChange(ConnectivityResult result) async {
    var hasConnection = await _checkInternetStatus(result);
    if (_hasConnection != hasConnection) {
      _hasConnection = hasConnection;
      _connectionChangeController.add(hasConnection);
    }
  }

  Future<bool> _checkInternetStatus(ConnectivityResult result) async {
    if (result == ConnectivityResult.none) return false;
    bool isOnline = false;
    try {
      final result = await InternetAddress.lookup('google.com');
      isOnline = result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      isOnline = false;
    }
    return isOnline;
  }

  @disposeMethod
  void dispose() {
    _connectionChangeController.close();
  }
}

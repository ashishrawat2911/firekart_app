import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:fluttercommerce/core/analytics/analytics.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: Analytics)
class FirebaseAnalyticsImpl extends Analytics {
  final FirebaseAnalytics _analytics;

  FirebaseAnalyticsImpl(this._analytics);

  @override
  void logEvent({required String name, required Object value}) {
    _analytics.logEvent(name: name, parameters: {"value": value});
  }

  @override
  void logEventWithParam({required String name, Map<String, Object?>? parameters}) {
    _analytics.logEvent(name: name, parameters: parameters);
  }
}

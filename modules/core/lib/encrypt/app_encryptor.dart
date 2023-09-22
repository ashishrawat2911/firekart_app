import 'package:encrypt/encrypt.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppEncryptor {
  final key = Key.fromBase64('dzj1DkENgmPBxA+eWKlHng==');
  final iv = IV.fromBase64('dzj1DkENgmPBxA+eWKlHng==');
  late final _encrypter = Encrypter(AES(key, mode: AESMode.cbc));

  String encrypt(String value) {
    return _encrypter.encrypt(value, iv: iv).base16;
  }

  String decrypt(String value) {
    return _encrypter.decrypt16(value, iv: iv);
  }
}

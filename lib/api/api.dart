import 'package:local_auth/local_auth.dart';

class LocalAuth {
  static final _auth = LocalAuthentication();

  static Future<bool> canAuthenticate() async {
    return await _auth.canCheckBiometrics || await _auth.isDeviceSupported();
  }

  static Future<bool> authenticate() async {
    try {
      if (!await canAuthenticate()) return false;
      return await _auth.authenticate(
          options: AuthenticationOptions(
              biometricOnly: true, useErrorDialogs: true, stickyAuth: true),
          localizedReason: 'Login');
    } catch (e) {
      print('error $e');
      return false;
    }
  }
}

import 'package:shared_preferences/shared_preferences.dart';

class LoginInfo {
  String username;
  String password;
  bool isLoggedIn;

  LoginInfo({this.username = '', this.password = '', this.isLoggedIn = false});

  Future<void> saveToSharedPreference() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('username', username);
    prefs.setString('password', password);
    prefs.setBool('isLoggedIn', isLoggedIn);
  }

  static Future<LoginInfo> getFromSharedPreference() async {
    final prefs = await SharedPreferences.getInstance();
    final username = prefs.getString('username') ?? '';
    final password = prefs.getString('password') ?? '';
    final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    return LoginInfo(
      username: username,
      password: password,
      isLoggedIn: isLoggedIn,
    );
  }

  static Future<void> deleteFromSharedPreference() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('username');
    prefs.remove('password');
    prefs.remove('isLoggedIn');
  }
}

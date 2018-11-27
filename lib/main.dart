import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// Front
import 'splash.dart';
import 'home.dart';
import 'signup.dart';
import 'lupas.dart';
// Dashboard
import 'dashboard/home.dart';
import 'dashboard/setting/profile.dart';
import 'dashboard/setting/profil_edit_page.dart';
import 'dashboard/chat_page/components/chat_screen_detail.dart';

final ThemeData kIOSTheme = new ThemeData(
  primaryColor: new Color(0xFF1e272e),
  cardColor: new Color(0xFF1e272e),
  accentColor: new Color(0xFF1e272e),
);

final ThemeData kDefaultTheme = new ThemeData(
  primaryColor: new Color(0xFF1e272e),
  cardColor: new Color(0xFF1e272e),
  accentColor: new Color(0xFF1e272e),
);

var routes = <String, WidgetBuilder>{
  '/home': (BuildContext context) => new MyHomePage(),
  '/signup': (BuildContext context) => new SignupPage(),
  '/lupas': (BuildContext context) => new LupasPage(),
  '/dashboard': (BuildContext context) => new DashboardPage(),
  '/profile': (BuildContext context) => new ProfilePage(),
  '/edit-profile': (BuildContext context) => new EditProfilePage(),
  '/chat-screen-detail': (BuildContext context) => new ChatScreenDetailPage()
};
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: defaultTargetPlatform == TargetPlatform.iOS
          ? kIOSTheme
          : kDefaultTheme,
      debugShowCheckedModeBanner: false,
      routes: routes,
      home: new SplashScreen(),
    );
  }
}

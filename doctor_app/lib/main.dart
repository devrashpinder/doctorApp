import 'package:doctor_app/pages/mobile_login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor:  const Color(0xff015ecb) ,
        primaryColorDark:const Color(0xff2F579F) ,
        accentColor: const Color(0xffab206),
        fontFamily: 'Georgia',
        textTheme: TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),

      ),
      home: MobileLoginPage(),
    );
  }

}

class AppThemeData extends ThemeData {
    factory AppThemeData() {

    }
}
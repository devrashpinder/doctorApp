import 'package:flutter/material.dart';


class MobileLoginPage extends StatefulWidget {
  @override
  _MobileLoginPageState createState() => _MobileLoginPageState();
}

class _MobileLoginPageState extends State<MobileLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Center(
           child: Column(
            children: [
               Text("Enter Your Mobile Number".toUpperCase(),
                 style: TextStyle(
                   color: Colors.white,

               ),)
            ],
          ),
        ),
      ),
    );

  }
}

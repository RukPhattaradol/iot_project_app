import 'package:flutter/material.dart';
import 'package:iot_project_app/views/signup_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('สมัครบัญชี'),
        ),
        body: SignUpScreen(),
      ),
    );
  }
}

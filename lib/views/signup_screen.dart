import 'package:flutter/material.dart';
import 'package:iot_project_app/service/api.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: fullNameController,
            decoration: InputDecoration(labelText: 'ชื่อเต็ม'),
          ),
          TextField(
            controller: usernameController,
            decoration: InputDecoration(labelText: 'Username'),
          ),
          TextField(
            controller: emailController,
            decoration: InputDecoration(labelText: 'Email'),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true, // ทำให้เป็นรหัสลับ
          ),
          SizedBox(height: 20.0),
          TextButton(
            onPressed: () {
              var data = {
              "fname" : fullNameController.text,
              "username" : usernameController.text,
              "email" : emailController.text,
              "password" : passwordController.text
              };
              Api.addproduct(data);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              primary: Colors.white,
            ),
            child: Text('สมัครบัญชี'),
          ),
        ],
      ),
    );
  }
}

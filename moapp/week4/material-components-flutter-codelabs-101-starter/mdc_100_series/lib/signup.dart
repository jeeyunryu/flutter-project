import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 20.0),
            TextField(
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 15.0),
            TextField(
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 15.0),
            TextField(
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Confirm Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 15.0),
            TextField(
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Email Address',
              ),
            ),
            
          ]
        )
      )
    );
  }
}
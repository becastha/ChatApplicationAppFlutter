import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final VoidCallback onLoginSuccess;

  const Login({
    Key? key,
    required this.onLoginSuccess,
  }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>;
  String _username = '';
  String _password = '';

  Future<void> _login() async {
    if()
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

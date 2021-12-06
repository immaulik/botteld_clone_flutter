// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use, prefer_const_constructors

import 'package:botteld_clone_flutter/Screens/main_screen.dart';
import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  AuthForm(
    this.submitFn,
    this.isLoading,
  );

  final bool isLoading;
  final void Function(
    String email,
    String password,
    String userName,
    bool isLogin,
    BuildContext ctx,
  ) submitFn;
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  var _isLogin = true;
  // ignore: prefer_final_fields
  var _userEmail = '';
  // ignore: prefer_final_fields
  var _userName = '';
  // ignore: prefer_final_fields
  var _userPassword = '';

  // ignore: unused_element
  void _trySubmit() {
    // ignore: avoid_print

    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();

    if (isValid) {
      _formKey.currentState!.save();
      widget.submitFn(
        _userEmail.trim(),
        _userPassword.trim(),
        _userName.trim(),
        _isLogin,
        context,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                _isLogin ? "LOGIN" : "REGISTER",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA),
                    fontSize: 36),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an Email';
                  }
                  if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                      .hasMatch(value)) {
                    return 'Please a valid Email';
                  }

                  return null;
                },
                onSaved: (value) {
                  _userEmail = value!;
                },
                decoration: const InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(
                    Icons.email_rounded,
                    color: Color(0xFF2661FA),
                    // icon is 48px widget.
                  ),
                ),
              ),
            ),
            if (!_isLogin) SizedBox(height: size.height * 0.03),
            if (!_isLogin)
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please a Enter Username';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: "Username",
                    prefixIcon: Icon(
                      Icons.person_add_alt_rounded,
                      color: Color(0xFF2661FA),
                      // icon is 48px widget.
                    ),
                  ),
                  onSaved: (value) {
                    _userName = value!;
                  },
                ),
              ),
            SizedBox(height: size.height * 0.03),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(
                    Icons.password_rounded,
                    color: Color(0xFF2661FA),
                    // icon is 48px widget.
                  ),
                ),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please a Enter Password';
                  }
                  return null;
                },
                onSaved: (value) {
                  _userPassword = value!;
                },
              ),
            ),
            if (!_isLogin) SizedBox(height: size.height * 0.03),
            if (!_isLogin)
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Conform Password",
                    prefixIcon: Icon(
                      Icons.password_rounded,
                      color: Color(0xFF2661FA),
                      // icon is 48px widget.
                    ),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please a Enter Password';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _userPassword = value!;
                  },
                ),
              ),
            if (_isLogin)
              Container(
                alignment: Alignment.centerRight,
                margin:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: const Text(
                  "Forgot your password?",
                  style: TextStyle(fontSize: 12, color: Color(0XFF2661FA)),
                ),
              ),
            SizedBox(height: size.height * 0.05),
            Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                     Navigator.of(context).push(MaterialPageRoute( builder: (context) => MainScreen()));
                  }
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                textColor: Colors.white,
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(255, 255, 136, 34),
                        Color.fromARGB(255, 255, 177, 41)
                      ])),
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    _isLogin ? "LOGIN" : "SIGN UP",
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _isLogin = !_isLogin;
                  });
                },
                child: Text(
                  _isLogin
                      ? "Don't Have an Account? Sign up"
                      : "Already Have an Account? Sign in",
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2661FA)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

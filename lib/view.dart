import 'package:flutter/material.dart';
import 'dart:io';

import 'package:task/request.dart';

class UIElements extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            getTextMeddu(),
            getBlankSpace(MediaQuery.of(context).size.width * 1 / 10),
            getLoginForm(context),
          ],
        ),
      ),
    );
  }

  Widget getTextMeddu() {
    return Text(
      'MEDDU',
      style: TextStyle(
        color: Colors.white,
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget getBlankSpace(space) {
    return SizedBox(
      height: space,
    );
  }

  Widget getLoginForm(context) {
    return Container(
      padding: EdgeInsets.all(40.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
      ),
      width: MediaQuery.of(context).size.width * 11 / 12,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          getTextLogin(),
          getBlankSpace(MediaQuery.of(context).size.width * 1 / 12),
          getFormFields(context),
          getBlankSpace(MediaQuery.of(context).size.width * 1 / 12),
          getLoginButton(context),
          getBlankSpace(MediaQuery.of(context).size.width * 1 / 16),
        ],
      ),
    );
  }

  Widget getTextLogin() {
    return Text(
      'LOGIN',
      style: TextStyle(
        color: Colors.blue,
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget getFormFields(context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Username',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 12,
            ),
          ),
        ),
        TextFormField(
          controller: usernameController,
          keyboardType: TextInputType.emailAddress,
          autovalidate: false,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2.0),
            ),
            hintText: 'example@email.com',
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width * 1 / 12,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Password',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 12,
            ),
          ),
        ),
        TextFormField(
          controller: passwordController,
          obscureText: true,
          autovalidate: false,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2.0),
            ),
            hintText: '*******',
            suffixIcon: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.help_outline,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: GestureDetector(
              onTap: () {},
              child: Text(
                'Forget your password',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget getLoginButton(context) {
    return GestureDetector(
      onTap: () => loginAttempt(
          context, usernameController.text, passwordController.text),
      child: Container(
        width: MediaQuery.of(context).size.width * 2 / 5,
        height: MediaQuery.of(context).size.width * 1 / 7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.blue.shade600,
              Colors.lightBlueAccent.shade100,
            ],
          ),
        ),
        child: Center(
          child: Text(
            'LOGIN',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget getForgotPassword() {
    return GestureDetector(
      onTap: null,
      child: Center(
        child: Text(
          'Don\'t have an account? Sign up',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

showLoginAttempt(context, status) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) {
      return Container(
        height: 500,
        width: 500,
        child: SimpleDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: Colors.white,
          elevation: 4.0,
          title: Center(
            child: Center(
              child: Text(
                'Login Attempted\nStatus code: $status',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}

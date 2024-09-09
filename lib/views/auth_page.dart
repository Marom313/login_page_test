// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_page_test/views/home_page.dart';
import 'package:login_page_test/views/login_or_register.dart';
// import 'package:login_page_test/views/login_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user is looged in
          if (snapshot.hasData) {
            // ignore: prefer_const_constructors
            return HomePage();
          } else {
            return LoginOrRegister();
          }
          //user is not logged in
        },
      ),
    );
  }
}

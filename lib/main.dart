import 'package:den_ecommerce/core/constant/den_theme.dart';
import 'package:den_ecommerce/screens/login_screen.dart';
import 'package:den_ecommerce/screens/registration_screen.dart';
import 'package:den_ecommerce/screens/set_password.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

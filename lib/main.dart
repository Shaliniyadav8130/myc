import 'package:flutter/material.dart';
import 'package:myc/Screens/InitialScreen.dart';
import 'package:myc/Screens/Registration/UserLogin.dart';
import 'package:myc/Screens/Registration/UserSignup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MYC',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: InitialScreen(),
    );
  }
}


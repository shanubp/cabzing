import 'package:flutter/material.dart';
import 'screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
         home: LoginPage(),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'screens/login_page.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cantina Uniesp',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const LoginPage(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:prakper5/pages/account.dart';
import 'package:prakper5/pages/beranda.dart';
import 'package:prakper5/pages/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pertemuan Lima',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/beranda': (context) => const HomePage(),
        '/settings': (context) => const Settings(),
        '/akun': (context) => const AccountPage(),
      },
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Center(
        child: 
        // OutlinedButton(
        //   child: const Text('Kembali'),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
        Text("Bukan Tombol Kembali")
      ),
    );
  }
}

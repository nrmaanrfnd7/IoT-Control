import 'package:flutter/material.dart';
import 'info_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IoT Device Control',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DeviceInfoPage(),
    );
  }
} 
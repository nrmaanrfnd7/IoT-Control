import 'package:flutter/material.dart';
import 'control_page.dart';

class DeviceInfoPage extends StatelessWidget {
  const DeviceInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informasi Perangkat'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            const SizedBox(height: 20),
            const Text(
              'Smart Lamp',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Status: Online',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            const Text(
              'IP Address: 192.168.1.10',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DeviceControlPage(),
                  ),
                );
              },
              child: const Text('Buka Kontrol'),
            ),
          ],
        ),
      ),
    );
  }
} 
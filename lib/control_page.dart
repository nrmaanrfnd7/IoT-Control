import 'package:flutter/material.dart';

class DeviceControlPage extends StatefulWidget {
  const DeviceControlPage({super.key});

  @override
  State<DeviceControlPage> createState() => _DeviceControlPageState();
}

class _DeviceControlPageState extends State<DeviceControlPage> {
  bool isLampOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontrol Perangkat'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '💡 Smart Lamp',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              isLampOn ? '✅ Status: Menyala' : '❌ Status: Mati',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Switch(
              value: isLampOn,
              onChanged: (value) {
                setState(() {
                  isLampOn = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
} 
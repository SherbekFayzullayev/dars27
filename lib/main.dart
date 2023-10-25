import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool light = false;
  void fn(value) {
    setState(() {
      light = value;
    });
  }

  bool light1 = false;
  void fn1(value) {
    setState(() {
      light1 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Connected devices'),
          leading: Icon(Icons.arrow_back),
          actions: [Icon(Icons.search_outlined)],
        ),
        body: Center(
          child: Column(
            children: [
              SwitchListTile(
                activeColor: const Color.fromARGB(255, 7, 255, 214),
                activeTrackColor: const Color.fromARGB(255, 85, 255, 7),
                inactiveThumbColor: Colors.amber,
                inactiveTrackColor: Colors.black,
                value: light,
                onChanged: fn,
                title: Text('Bluetooth'),
                subtitle: Text('Not visible to other devices'),
              ),
              ListTile(
                title: Text('Cast'),
                subtitle: Text('Not connected'),
              ),
              SwitchListTile(
                activeTrackColor: Color.fromARGB(255, 72, 235, 80),
                activeColor: Color.fromARGB(255, 32, 228, 228),
                inactiveThumbColor: Colors.amber,
                inactiveTrackColor: Colors.black,
                value: light1,
                onChanged: fn1,
                title: Text('NFC'),
                subtitle: Text(
                    'Allow data exchange when the phone touches another device'),
              ),
              ListTile(
                title: Text(
                  'Android Beam',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 117, 116, 116)),
                ),
                subtitle: Text(
                  'Unavailable because NFC is turned off',
                  style: TextStyle(color: Color.fromARGB(255, 127, 127, 127)),
                ),
              ),
              ListTile(
                title: Text(
                  'USB',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 145, 145, 145)),
                ),
                subtitle: Text(
                  'Not connected',
                  style: TextStyle(color: Color.fromARGB(255, 156, 154, 154)),
                ),
              ),
              ListTile(
                title: Text('Printing'),
                subtitle: Text('2 print services on'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

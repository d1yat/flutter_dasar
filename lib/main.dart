import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String _message = 'Hello World!';
  String _buttonText = 'Click Me';

  void _handleButtonClick() {
    setState(() {
      if (_buttonText == 'Click Me') {
        _buttonText = 'Restart';
        _message = 'Button pressed!';
      } else {
        _buttonText = 'Click Me';
        _message = 'Hello World!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dasar',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_message, style: TextStyle(fontSize: 20)),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: _handleButtonClick,
                child: Text(_buttonText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
  late String _message;
  String _buttonText = 'Click Me';

  @override
  void initState() {
    super.initState();

    setState(() {
      _message = 'Hello, world!';
    });
  }

  void _handleButtonClick() {
    setState(() {
      if (_buttonText == 'Click Me') {
        _buttonText = 'Restart';
        _message = 'Button is pressed!';
      } else {
        _buttonText = 'Click Me';
        _message = 'Hello, world!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dasar',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.deepOrange),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_message, style: TextStyle(fontSize: 20)),
              const SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: _handleButtonClick,
                label: Text(_buttonText),
                icon: Icon(Icons.mouse),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

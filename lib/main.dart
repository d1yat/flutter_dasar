import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dasar',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.deepOrange),
      home: Row(children: [BlueBox('Satu'), BlueBox('Dua'), BlueBox('Tiga')]),
    );
  }
}

class BlueBox extends StatelessWidget {
  final String text;

  const BlueBox(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(color: Colors.blue, border: BoxBorder.all()),
      margin: EdgeInsets.only(left: 3.0),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}

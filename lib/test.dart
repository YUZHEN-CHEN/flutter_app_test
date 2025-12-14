import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class  MyApp() extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

Row(
children: [
Container(
width: 300,
height: 300,
color: Colors.blue,
child: Center(
child: Row(
children: [
Container(
width: 10,
height: 100,
color: Colors.green,
),
],
),
),
),
Container(
width: 100,
height: 100,
color: Colors.red,
child: Text(
'Red Text',
style: TextStyle(fontSize: 30),
),
),
],
),

Expanded(
child: Container(
width: 100,
color: Colors.red,
child: Text(
'Red Text',
style: TextStyle(fontSize: 30),
),
),
),

SizedBox(
width: 150,
height: 150,
child: Image(image: AssetImage('Image/ame.jpg')),
),

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home : FirstScreen (),
  ));

class FirstScreen extends StatefulWidget 
{
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  
  int counter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
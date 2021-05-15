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
      appBar : AppBar(
        title : Text(
          'App Bar', 
        ),
        centerTitle : true,
      ),
      body : Center (
        child : Column (
          mainAxisAlignment : MainAxisAlignment.center,
          children : [
            Text (
              'You have pushed the button this much times'
            ),
            Text (
              '$counter',
              style : TextStyle (
                fontSize : 40,
                fontWeight : FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton : FloatingActionButton(
        child : Icon(Icons.add),
        tooltip : 'Increment above value',
        onPressed : () {
          setState( () {
            counter++;
          }
          );
        },
      ),
    );
  }
}
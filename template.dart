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

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/second');
          },
          child: Text('Launch screen'),
        ),
      ),
    );
  }
}
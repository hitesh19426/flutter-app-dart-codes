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
  final _formkey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(),
      body : Center (
        child : Form (
          key : _formkey,
          child : Column(
            children : [
              Text (
                'Sign Up',
                style : TextStyle (
                  fontSize : 20.0,
                  fontWeight : FontWeight.bold,
                  letterSpacing : 1.0,
                  color : Colors.grey,
                ),
              ),
              TextFormField(
                decoration : InputDecoration (
                  hintText : 'Enter first name',
                  labelText : 'First Name',
                ),
                validator : (value) {
                  if ( value == null || value.isEmpty )
                    return 'please enter some input';
                  return null;
                },
              ),
              TextFormField(
                decoration : InputDecoration (
                  hintText : 'Enter last name',
                  labelText : 'Last Name',
                ),
                validator : (value) {
                  if ( value == null || value.isEmpty )
                    return 'please enter some input';
                  return null;
                },
              ),
              TextFormField(
                decoration : InputDecoration (
                  hintText : 'Enter username',
                  labelText : 'UserName',
                ),
                validator : (value) {
                  if ( value == null || value.isEmpty )
                    return 'please enter some input';
                  return null;
                },
              ),
              SizedBox(height : 10),
              ElevatedButton (
                onPressed : () {
                  if (_formkey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
                  }
                },
                child : Text (
                  'Submit',
                ),
              ),
            ],
          ),
        ),
      ),
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
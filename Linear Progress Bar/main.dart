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
  Color? _backgroundColor = Colors.red[400];
  Animation<Color?>? _valueColor = AlwaysStoppedAnimation<Color?>(Colors.red[800]);
  double _value = 0.0;
  
  void setColor(){    
    _value = counter/5.0;
    if (counter == 0){
      _backgroundColor = Colors.red[400];
      _valueColor = AlwaysStoppedAnimation<Color?>(Colors.red[800]);
    }
    else if (counter == 1){
      _backgroundColor = Colors.orange[400];
      _valueColor = AlwaysStoppedAnimation<Color?>(Colors.orange[800]);
    }
    else if (counter == 2){
      _backgroundColor = Colors.yellow[400];
      _valueColor = AlwaysStoppedAnimation<Color?>(Colors.yellow[800]);
    }
    else if (counter == 3){
      _backgroundColor = Colors.lime;
      _valueColor = AlwaysStoppedAnimation<Color?>(Colors.lime[800]);
    }
    else if (counter == 4){
      _backgroundColor = Colors.cyanAccent[400];
      _valueColor = AlwaysStoppedAnimation<Color?>(Colors.cyanAccent[800]);
    }
    else{
      _backgroundColor = Colors.green;
      _valueColor = AlwaysStoppedAnimation<Color?>(Colors.green[800]);
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : const Text('Linear Progress Bar Demo'),
        centerTitle : true,
      ),
      body : Center(
        child : Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children : [
            LinearProgressIndicator(
              value : _value,
              backgroundColor : _backgroundColor,
              valueColor : _valueColor,
            ),
          ],
        ),
      ),
      floatingActionButton : FloatingActionButton(
        child : Icon(Icons.add),
        onPressed : () {
          setState ( () 
             {
               counter++;
               if (counter == 6)
                 counter = 0;
               setColor();
             }
          );
        },
        tooltip : 'Increase progress by 20%',
      ),
    );
  }
}
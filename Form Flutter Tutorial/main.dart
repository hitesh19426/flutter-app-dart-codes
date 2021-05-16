import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes : {
    '/' : (context) => FirstScreen(),
    '/welcome' : (context) => WelcomeScreen(),
  },    
));

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First Screen',
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 400.0,
          child: MyCustomForm(),
        ),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget 
{
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _userNameController = TextEditingController();
  
  int validFields = 0;
  double _progress = 0.0;
  final _formkey = GlobalKey<FormState>();
  
  Color? _backgroundColor = Colors.red[400];
  Animation<Color?>? _valueColor = AlwaysStoppedAnimation<Color?>(Colors.red[800]);
  
  void updateColors()
  {
    if (validFields == 0){
      _backgroundColor = Colors.red[400];
      _valueColor = AlwaysStoppedAnimation<Color?>(Colors.red[800]);
    }
    else if (validFields == 1){
      _backgroundColor = Colors.orange[400];
      _valueColor = AlwaysStoppedAnimation<Color?>(Colors.orange[800]);
    }
    else if (validFields == 2){
      _backgroundColor = Colors.yellow[400];
      _valueColor = AlwaysStoppedAnimation<Color?>(Colors.yellow[800]);
    }
    else if (validFields == 3){
      _backgroundColor = Colors.lime;
      _valueColor = AlwaysStoppedAnimation<Color?>(Colors.lime[800]);
    }
    
  }
  
  void updateProgress()
  {
    validFields = 0;
    final controllers = [_firstNameController, _lastNameController, _userNameController];
    for ( int i=0; i<controllers.length; i++)
      if (controllers[i].value.text.isNotEmpty)
        validFields += 1;
    
    setState( () {
        _progress = validFields/controllers.length;
        updateColors();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key : _formkey,
      onChanged : updateProgress,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        LinearProgressIndicator(
          value: _progress,
          backgroundColor : _backgroundColor,
          valueColor : _valueColor,
        ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 30,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
                wordSpacing: 1.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: TextFormField(
              controller : _firstNameController,
              decoration: InputDecoration(hintText: 'first name'),
              validator : (String? value){
                if (value==null || value.isEmpty){
                  return 'Please enter a name';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: TextFormField(
              controller : _lastNameController,
              decoration: InputDecoration(hintText: 'last name'),
              validator : (String? value){
                if (value==null || value.isEmpty){
                  return 'Please enter a name';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: TextFormField(
              controller : _userNameController,
              decoration: InputDecoration(hintText: 'username'),
              validator : (String? value){
                if (value==null || value.isEmpty){
                  return 'Please enter a name';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20.0,
            ),
            child: ElevatedButton(
              onPressed: () {
                if (_formkey.currentState!.validate())
                {
                  Navigator.pushNamed(context, '/welcome');
                }
              },
              child: Text('Sign Up'),
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(),
      body : Center(
        child : Text (
          'Welcome !',
          style : TextStyle(
            fontSize : 30.0,
            fontWeight : FontWeight.bold,
            color : Colors.grey[400],
            letterSpacing : 1.0,
          ),
        ),
      ),
    );
  }
  
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      initialRoute: '/second',
      routes: {
        '/second': (context) => WelcomeScreen(),
        '/': (context) => SignUpScreen(),
      },
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Welcome !',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 45,
              color: Colors.grey[600],
            )),
      ),
      appBar : AppBar(
        title : Text (
          'Welcome Screen',
        ),
        centerTitle : true,
      ),
    );
  }
}

class CenterCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Card(
        borderOnForeground: true,
        color: Colors.white,
        elevation: 2.0,
        child: Column(
          children: [
            LinearProgressIndicator(
              value: 1.0,
              semanticsLabel: 'Progress of the form',
            ),
            SizedBox(height: 10),
            Text(
              'Sign Up',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
                wordSpacing: 1.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your first name',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your last name',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your username',
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen()),
                );
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  alignment: Alignment.center,
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  )),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ));
  }
}

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          width: 400,
          height: 270,
          child: CenterCard(),
        ),
      ),
    );
  }
}

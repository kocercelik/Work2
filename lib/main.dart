import 'package:flutter/material.dart';
import 'package:work5/SecondScreen.dart';
void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email= '' ;
  String password= '' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        padding: EdgeInsets.all(120.0),
        child: Form(
            child: ListView(
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'you@example.com',
                    labelText: 'Enter Username'
                  ),
                  onChanged: (textdegisiyor) {this.email=textdegisiyor ;},
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Enter password',
                  ),
                  onChanged: (text2degisiyor)  {this.password=text2degisiyor ;},
                ),
                new Container(
                  width: 150.0,
                  child: RaisedButton(
                    child: new Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => mybuild(context, this.email, this.password)));
                      });
                      },
                    color: Colors.black54,
                  ),
                  margin: EdgeInsets.only(top: 50.0
                  ),
                )
              ],
            ),
        )
      ),
    );
  }
}

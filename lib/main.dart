import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Wow',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: FormPage());
  }
}

class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  height: size.height / 4,
                  width: size.width,
                  color: Color.fromRGBO(65, 83, 181, 1),
                  child: Image.asset('images/logo_white.png'),
                ),
              ),
              Positioned(
                top: size.height / 5,
                left: size.width * 2 / 16,
                height: size.height * 3 / 5,
                width: size.width * 6 / 8,
                child: InputForm(),
              ),
              Positioned(
                top: size.height / 40 * 31,
                left: size.width * 2 / 16 ,
                height: size.height * 5 / 60,
                width: size.width * 6 / 8,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(65,83,181,1),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.grey[400],
                          blurRadius: 20.0,
                          offset: Offset(0.0, 15.00)
                      )
                    ],
                  ),
                  child: Center(child: Text(
                    'GET OPT',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: ''),
                  ),
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InputForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              'WOW',
              style: TextStyle(
                  color: Color.fromRGBO(65, 83, 181, 1),
                  fontSize: 22,
                  fontFamily: ''),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text('First Party Auth', style: TextStyle(color: Colors.grey[500]),),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                labelStyle: TextStyle(color: Colors.grey[500]),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                labelStyle: TextStyle(color: Colors.grey[500]),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.grey[500]),
              ),
            ),
          )
        ],
      ),
    );
  }
}

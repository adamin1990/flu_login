import 'package:flu_login/pages/home.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flu Login',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white38,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3.0),
            borderSide: BorderSide(
              style: BorderStyle.none,
              width: 0
            )
          ),

          hintStyle: TextStyle(color: Colors.white),
          contentPadding: EdgeInsets.symmetric(
            vertical: defaultPadding*1.2,horizontal: defaultPadding
          )

        )
      ),
      home: Home(),
    );
  }
}



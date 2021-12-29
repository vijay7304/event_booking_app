import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:event_booking_app/screens/auth/login.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
      ),
      home: login(),
    );
  }
}






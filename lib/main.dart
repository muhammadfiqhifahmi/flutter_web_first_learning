import 'package:flutter/material.dart';
import 'package:webflutters/pages/landing_pages.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: LandingPage() 
    );
  }
}


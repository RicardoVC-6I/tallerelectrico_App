import 'package:flutter/material.dart';
import 'package:valenciana/galeriadetallerelectrico.dart';

void main() {
  runApp(TallerApp());
} // funcion principal

class TallerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Taller V2',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: PaginaInicial());
  } // widget
} // clase taller app widgets sin estado

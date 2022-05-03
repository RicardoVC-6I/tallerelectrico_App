import 'package:flutter/material.dart';

void main() {
  runApp(TallerApp());
} // funcion principal

class TallerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Taller',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: PaginaInicial());
  } // widget
} // clase taller app widgets sin estado

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
} //widget con estado

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/taller3.jpg",
    "assets/images/taller4.jpg",
    "assets/images/taller5.jpg",
    "assets/images/taller3.jpg",
    "assets/images/taller4.jpg",
    "assets/images/taller5.jpg",
    "assets/images/taller3.jpg",
    "assets/images/taller4.jpg",
    "assets/images/taller5.jpg",
    "assets/images/taller3.jpg",
    "assets/images/taller4.jpg",
    "assets/images/taller5.jpg",
    "assets/images/taller3.jpg",
    "assets/images/taller4.jpg",
    "assets/images/taller5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tutorial GridView"),
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 12,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}

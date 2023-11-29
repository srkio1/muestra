import 'package:flutter/material.dart';

class Pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children:[
        Container(
        color: Colors.yellow,
        height: MediaQuery.of(context).size.height * 0.50,
        width: MediaQuery.of(context).size.width * 0.50,
      ),
      Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height * 0.50,
        width: MediaQuery.of(context).size.width * 0.50,
      )
      ] ),
    ); 
  }
}
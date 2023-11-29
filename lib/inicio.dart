import 'package:flutter/material.dart';
import 'package:muestra/pagina1.dart';
import 'package:muestra/pagina2.dart';
import 'package:muestra/pagina3.dart';

class Inicio extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Inicio> {
  int _selectedIndex = 0;

  final _pages = [
    Pagina1(),
    Pagina2(), 
    Pagina3()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home), 
              label: 'Página 1'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Página 2'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Página 3'
            ), 
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }    
}
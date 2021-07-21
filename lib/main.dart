import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:periodic_table_app/helpers/routes.dart';

void main() {
  runApp(PeriodicTableApp());
}

class PeriodicTableApp extends StatefulWidget {
  PeriodicTableApp({Key? key}) : super(key: key);

  @override
  _PeriodicTableAppState createState() => _PeriodicTableAppState();
}

class _PeriodicTableAppState extends State<PeriodicTableApp> {
  int _screenIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      if (index <= routes.length) _screenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            centerTitle: true,
            title: Text("Periodic Table App"),
          ),
          body: routes.elementAt(_screenIndex),
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: false,
            selectedItemColor: Colors.redAccent,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), label: "About"),
            ],
            currentIndex: _screenIndex,
            onTap: _onItemTapped,
          ),
        ));
  }
}

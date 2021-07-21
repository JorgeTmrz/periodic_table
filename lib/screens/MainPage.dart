import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:periodic_table_app/helpers/PeriodicElemenentItem.dart';
import 'package:periodic_table_app/models/element.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<PeriodicTableElement> _elements = [];

  _getElements() async {
    final String response = await rootBundle.loadString("assets/elements.json");
    final data = await json.decode(response);
    setState(() {
      _elements = PeriodicTableElements.fromJson(data).elements;
    });
  }

  @override
  void initState() {
    super.initState();
    _getElements();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [for (var element in _elements) PeriodicElementItem(element)],
    );
  }
}

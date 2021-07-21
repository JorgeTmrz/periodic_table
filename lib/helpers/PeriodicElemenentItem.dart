import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:periodic_table_app/models/element.dart';
import "dart:math" as math;

class PeriodicElementItem extends StatelessWidget {
  PeriodicElementItem(PeriodicTableElement element) {
    this._element = element;
  }
  PeriodicTableElement _element = PeriodicTableElement();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        height: 220,
        width: double.maxFinite,
        color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
            .withOpacity(0.6),
        child: GestureDetector(
          onTap: () => {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                context: context,
                builder: (context) {
                  return Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.all(20),
                          child: Flexible(
                            flex: 2,
                            fit: FlexFit.loose,
                            child: Flex(
                              direction: Axis.vertical,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(20),
                                  child: Text(
                                    _element.name!,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                ),
                                Text(
                                  _element.summary!,
                                  overflow: TextOverflow.clip,
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 10, 10),
                                    child: Text(
                                        "Discovered by: ${_element.discoveredBy!}")),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                                    child:
                                        Text("Named by: ${_element.namedBy!}")),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                                    child: Text(
                                        "Looks like: ${_element.appearance!}")),
                              ],
                            ),
                          ))
                    ],
                  );
                })
          },
          child: Card(
              elevation: 5,
              child: Center(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    (_element.symbol == null || _element.symbol == "")
                        ? _element.name ?? ""
                        : _element.symbol ?? "",
                    style: TextStyle(
                        fontSize: 50,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(_element.name!)
                ],
              ))),
        ));
  }
}

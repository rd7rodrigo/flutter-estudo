import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Topo extends StatefulWidget {
  @override
  _TopoState createState() => _TopoState();
}

class _TopoState extends State<Topo> {
  @override
  Widget build(BuildContext context) {
    return Container(      
      decoration: gradiente(),
      child: Icon(
            Icons.wifi_tethering,
            color: Colors.black,
            size: 60.0,
          ),
      height: 230,
    );
  }
}

BoxDecoration gradiente() {
  return BoxDecoration(
    gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
      Colors.yellow, Colors.amber
    ])
  );
}
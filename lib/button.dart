import 'package:flutter/material.dart';

class ButtonText extends StatefulWidget {
  final Color color;
  final String text;
  final IconData iconData;

  const ButtonText({Key key, this.color = Colors.grey, this.text = "", this.iconData = Icons.image}) : super(key: key);
  
  @override
  _ButtonTextState createState() => _ButtonTextState();
}

class _ButtonTextState extends State<ButtonText> {

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: borderIcon(widget.color),
        width: double.infinity,
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Icon(widget.iconData),
              flex: 1,
            ),
            Expanded(
              child: Row(children: <Widget>[
                Text(widget.text),
              ],),
              flex: 3,
            )
        ],),
    );
  }
}


BoxDecoration borderIcon(color) {
  return BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.amber, offset: Offset.fromDirection(0.2, 0.1), blurRadius: 0.2, spreadRadius: 0.2
      ),
    ],
    color: color,
    borderRadius: BorderRadius.circular(5.0)
  );
}
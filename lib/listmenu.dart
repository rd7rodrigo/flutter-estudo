import 'package:flutter/material.dart';

class ListMenu extends StatefulWidget {
  final Color color;
  final String text;
  final String subtitulo;
  final IconData iconData;

  const ListMenu({Key key, this.color = Colors.grey, this.text = "", this.subtitulo = "", this.iconData = Icons.image}) : super(key: key);
  
  @override
  _ListMenuState createState() => _ListMenuState();
}

class _ListMenuState extends State<ListMenu> {

  @override
  Widget build(BuildContext context) {
      return Container(
        height: 110,
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
            children: <Card>[
              Card(
                child: ListTile(
                  title: Text(widget.text), leading: Icon(widget.iconData, color: Colors.amber,), subtitle: Text(widget.subtitulo), contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                )
              ),
          ],
        ),        
      );

  }
}


BoxDecoration borderIcon(color) {
  return BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2), 
        offset: Offset.fromDirection(1.1, 0.9), 
        blurRadius: 0.4, 
        spreadRadius: 0.1
      ),
    ],
    color: color,
    borderRadius: BorderRadius.circular(5.0)
  );
}
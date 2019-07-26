
import 'package:flutter/material.dart';

class EditClipping extends StatefulWidget {
  @override
  _EditClippingState createState() => _EditClippingState();
}

class _EditClippingState extends State<EditClipping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              'https://picsum.photos/250?image=9',
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      // ),
      ),
    );
  }
}
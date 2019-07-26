
import 'package:flutter/material.dart';

import 'edit-clipping.dart';

class NovoClipping extends StatefulWidget {
  @override
  _NovoClippingState createState() => _NovoClippingState();
}

class _NovoClippingState extends State<NovoClipping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: GestureDetector(
        child: Hero(
          tag: 'imageHero',
          child: Image.network(
            'https://picsum.photos/250?image=9',
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return EditClipping();
          }));
        },
      ),
    );
  }
}
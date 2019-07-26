import 'dart:async';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class ButtonCamera extends StatefulWidget {

  @override
  _ButtonCameraState createState() => _ButtonCameraState();
}

class _ButtonCameraState extends State<ButtonCamera> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0,
      width: 75.0,
      decoration: myBoxDecoration(),
      child: FloatingActionButton(
          onPressed: () => print("camera aqui"),
          tooltip: 'Incrementar',
          child: Container(
            decoration: borderIcon(),
            padding: EdgeInsets.all(2.0),
            child: Icon(
              Icons.camera, size: 51,color: Colors.white,
            ),
          ),
          backgroundColor: Colors.white,
      )
    );
  }
}


BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.amber,
      width: 1, //                   <--- border width here
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(105.0) //     
    )
  );
}

BoxDecoration borderIcon() {
  return BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [Colors.amberAccent, Colors.amber]
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(100.0) //     
    )
  );
}

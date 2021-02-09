import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final child;
  final color;
  final function;

  MyButton({this.child, this.color, this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: child,
        ),
        decoration: BoxDecoration(
          color: color[700],
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: color[900],
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
            BoxShadow(
                color: color[400],
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color[500],
              color[600],
              color[700],
              color[800],
            ],
            stops: [0.1, 0.3, 0.6, 0.8],
          ),
        ),
      ),
    );
  }
}

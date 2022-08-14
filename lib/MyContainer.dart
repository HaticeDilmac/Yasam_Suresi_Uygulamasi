
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Widget child;
  final Color renk;

  MyContainer({
    this.renk = Colors.white70,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
import 'dart:ui';

import 'package:flutter/material.dart';

class ChipsWidget extends StatelessWidget {
  Color color;
String label;
  ChipsWidget({
    Key? key,
    required this.color,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Chip(
        backgroundColor: color ,
        padding: EdgeInsets.all(10.0),
        label: Text('${label}',style: TextStyle(color: Colors.white ),),
      ),
    );
  }
}

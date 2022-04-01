import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconData icon;

  Null Function() actions;
  Color backgroundColor;

  Color color;


  IconWidget({
    Key? key,
   required this.backgroundColor,
    required this.icon,
    required this.actions,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: actions,
      child: Container(
        height: 30.0,
        width: 30.0,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        child: Icon(icon,color: color,),
        
      ),
    );
  }
}

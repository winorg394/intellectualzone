import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  String label;
  String actionLabel;
  Null Function()  actions ;
  CategoryWidget({
    Key? key,
    required this.label,
    required this.actionLabel,
    required this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "${label}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap:  actions,
              child: Text(
            "${actionLabel}",
            style: TextStyle(color: Color(0xff35387d), fontSize: 12.0),
          )),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class GroupInfoWidget extends StatelessWidget {
  String subtitle;
  String title;
  GroupInfoWidget({
    Key? key,
    required this.subtitle,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${title}",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          "${subtitle}",
          style: TextStyle(fontSize: 12.0),
        ),
      ],
    );
  }
}

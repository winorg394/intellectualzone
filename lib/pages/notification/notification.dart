

import 'package:flutter/material.dart';
import 'package:intellectual_zone/pages/home/bookdetail.dart';
import 'package:intellectual_zone/widgets/notification.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({ Key? key }) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              // type=1 book ,type=2 measse, type=3 news
              NotificationWidget(type:1),
              NotificationWidget(type:2),
              NotificationWidget(type:2),
              NotificationWidget(type:3),
              NotificationWidget(type:1),
              NotificationWidget(type:2),
              NotificationWidget(type:1),
            ],
          ),
          
        ),
      ),
    );
  }
}


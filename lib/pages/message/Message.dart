import 'package:flutter/material.dart';
import 'package:intellectual_zone/widgets/ForumWidget.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {

  var forum=[
{
  "title":"Matematique",
  "participant":"Matematique",
  "nb":"Matematique",
  "image":"Matematique",
}
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Forum"),
        ),
        body: SizedBox.expand(

          child: Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: ListView(
              children: [
                ForumWidget(title:"Mathematiques from5", participant: "24 participant",nb:"1 new message",image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGWZh8qCLpo3wm_nsjudyuHOf60HMLae1Stw&usqp=CAU"),
                ForumWidget(title:"Physique from5", participant: "20 participant",nb:"5 new message",image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGWZh8qCLpo3wm_nsjudyuHOf60HMLae1Stw&usqp=CAU"),
                ForumWidget(title:"English from5", participant: "10 participant",nb:"9 new message",image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGWZh8qCLpo3wm_nsjudyuHOf60HMLae1Stw&usqp=CAU"),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}

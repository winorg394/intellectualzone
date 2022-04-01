import 'package:flutter/material.dart';
import 'package:intellectual_zone/pages/home/bookdetail.dart';
import 'package:intellectual_zone/pages/message/messageDetail.dart';

class ForumWidget extends StatelessWidget {

final nb;
final participant;
final title;
final image;
   ForumWidget({Key? key, required String  this.nb, required String this.participant, required String this.title, required String this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_)=>  messageDetail() )
            );
          },
          dense: true,
          leading: Container(
            height: 60.0,
            width: 60.0,
            decoration:  BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                          image: NetworkImage("${image}"),
                          fit: BoxFit.contain,
                        ),
                borderRadius: BorderRadius.all(const Radius.circular(100.0))),
          ),
          title:  Text("${title}",style: const TextStyle(fontSize: 16.0),),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text("${participant}"),
              Text("${nb}"),
            ],
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 19.0,
          ),
        ),
        const Divider(),
      ],
    );
  }
}

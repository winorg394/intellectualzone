import 'package:flutter/material.dart';
import 'package:intellectual_zone/pages/home/bookdetail.dart';

class NotificationWidget extends StatelessWidget {
  final type;

   NotificationWidget({Key? key, required int this.type,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_)=> type==1 ? const BookDetail() : BookDetail() )
            );
          },
          dense: true,
          leading: Container(
            height: 60.0,
            width: 60.0,
            decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(const Radius.circular(100.0))),
          ),
          title: const Text("Mathematique for uppersirte",style: const TextStyle(fontSize: 16.0),),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("by prof franky "),
             type==1? const Text("Book"): type==2?const Text("Message"):const Text("News"),
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

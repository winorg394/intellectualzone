import 'package:flutter/material.dart';

import 'package:intellectual_zone/pages/home/bookdetail.dart';

class CategoryCardWidget extends StatelessWidget {
  String title;
  String subTitle;
  String image;
   Null Function()  actions ;

  CategoryCardWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.actions,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: actions,
      child: Card(
        elevation: 0.8,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 70.0, 
                  width: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.red, 
                    image: DecorationImage(image: AssetImage("${image}"))
                  ),
                ),
              ),
              SizedBox(height: 20.0,), 

              Text("${title}",style: TextStyle(fontSize: 12.0),),
              Text("${subTitle}",style: TextStyle(fontSize: 10.0,color: Colors.grey),)
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intellectual_zone/pages/home/bookdetail.dart';
import 'package:intellectual_zone/widgets/CategoryCardWidget.dart';
import 'package:intellectual_zone/widgets/iconWidget.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  final messageData = [
    {
       "title": "Physique",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoS8oTIuUYW5bXQcMSWHD0zE_tjAfRiVzNvA&usqp=CAU",
      "servant": "Prof Matial",
      "time": "102 reader",
      "dateMsg": "7 Janv 2021",
      "id": 1
    },
      {
       "title": "Matematique 2",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoS8oTIuUYW5bXQcMSWHD0zE_tjAfRiVzNvA&usqp=CAU",
      "servant": "Prof Matial",
      "time": "102 reader",
      "dateMsg": "7 Janv 2021",
      "id": 1
    },   {
      "title": "Matematique 1",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoS8oTIuUYW5bXQcMSWHD0zE_tjAfRiVzNvA&usqp=CAU",
      "servant": "Prof Matial",
      "time": "102 reader",
      "dateMsg": "7 Janv 2021",
      "id": 1
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                  color: Color(0xff4748dc),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Coourses",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 17.0),
                            ),
                            Text(
                              "Get the courses you whan ",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12.0),
                            ),
                          ],
                        ),
                        IconWidget(
                           color: Colors.black,
                          backgroundColor: Colors.white,
                          icon: Icons.notification_add_outlined,
                          actions: () {},
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(50.0))),
                      height: 40.0,
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: "Search ...",
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20.0)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Expanded(
                child: ListView.separated(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (_)=>BookDetail() )
                          );
                        },
                        child: (Row(
                          children: [
                            Container(
                              height: 90.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                        "${messageData[index]['image']}",
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2.5,
                                    child: Text(
                                      "${messageData[index]['title']}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              MediaQuery.of(context).size.width /
                                                  30.0,
                                          overflow: TextOverflow.ellipsis),
                                      maxLines: 2,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              " ${messageData[index]['servant']}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w100,
                                                  fontSize: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      55.0),
                                            ),
                                            Text(
                                              "${messageData[index]['time']}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w100,
                                                  fontSize: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      55.0),
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.date_range,
                                                  color: Colors.grey,
                                                  size: 14.0,
                                                ),
                                                Text(
                                                  "${messageData[index]['dateMsg']}",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w100,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              55.0),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return (Divider(
                        thickness: 1.2,
                      ));
                    },
                    itemCount: messageData.length),
              ),
            )
          ],
        ),
      )),
    );
  }
}

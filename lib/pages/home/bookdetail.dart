import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:intellectual_zone/pages/home/read/book_read.dart';
import 'package:intellectual_zone/widgets/groupinfoWidget.dart';
import 'package:intellectual_zone/widgets/iconWidget.dart';

class BookDetail extends StatefulWidget {
  const BookDetail({Key? key}) : super(key: key);

  @override
  State<BookDetail> createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOMtfXkVaNJZXs5_R06fZRRsqDo8kJ_bSriw&usqp=CAU") ),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0))),
                  ),
                  Positioned(
                      top: 10.0,
                      left: 10.0,
                      child: IconWidget(
                        color: Colors.black,
                        backgroundColor: Colors.white,
                        actions: () {},
                        icon: Icons.arrow_back,
                      )),
                  Positioned(
                    right: 10.0,
                    top: 10.0,
                    child: IconWidget(
                      color: Colors.black,
                      backgroundColor: Colors.white,
                      actions: () {},
                      icon: Icons.notification_add_outlined,
                    ),
                  ),
                  Positioned(
                    right: MediaQuery.of(context).size.width / 3,
                    top: MediaQuery.of(context).size.height / 3,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            IconWidget(
                                color: Colors.white,
                                actions: () {},
                                icon: Icons.preview,
                                backgroundColor: Colors.grey.withOpacity(0.3)),
                            Text('Course preview')
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      "Geometrique is goof for matematique",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 16.0,
                                color: Color(0xff4748dc),
                              ),
                              Text(
                                "M. Voukeng Dongmo",
                                style: TextStyle(
                                    fontSize: 11.0, color: Color(0xff4748dc)),
                              )
                            ],
                          ),
                          Text(
                            '48 subscriber',
                            style: TextStyle(fontSize: 11.0),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 11.0),
                      child: Text(
                        'vldfd  dfdfsjgjq bjqsdsd hjgdhs gsdjsgdsgd  dsgqhsqhs hghqgd  jhjsdjhyeeb gsdbkqsqbs sd dfjhdfj jdhfjhdfh jdhfjdhfjhd djhfjhdf',
                        style: TextStyle(fontSize: 11.0, fontFamily: 'arial'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GroupInfoWidget(
                                  title: "Student", subtitle: "1254"),
                              GroupInfoWidget(
                                  title: "Language", subtitle: "1254")
                            ],
                          ),
                          SizedBox(
                            height: 24.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GroupInfoWidget(
                                  title: "Last Update", subtitle: "1254"),
                              GroupInfoWidget(
                                  title: "Dowloaded", subtitle: "1254")
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Stack(
          children: [
            Container(
              height: 50.0,
              decoration: BoxDecoration(color: Colors.transparent),
            ),
            Positioned(
              bottom: 0.0,
              left: 2.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) =>
                          PDFScreen()
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff4748dc),
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                          child: Text(
                        "Read",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

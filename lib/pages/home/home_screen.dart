import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intellectual_zone/pages/home/bookdetail.dart';
import 'package:intellectual_zone/pages/home/category/courses_screen.dart';
import 'package:intellectual_zone/pages/search/search.dart';
import 'package:intellectual_zone/widgets/CategoryCardWidget.dart';
import 'package:intellectual_zone/widgets/categoryWidget.dart';
import 'package:intellectual_zone/widgets/chipsWidget.dart';
import 'package:intellectual_zone/widgets/iconWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var className = [
    {
      "title": "From 5",
      "subtitle": "10 books",
      "image": "assets/images/from5.png",
    },
    {
      "title": "Lowersite",
      "subtitle": "5 books",
      "image": "assets/images/lower.png",
    },
    {
      "title": "Uppersite",
      "subtitle": "6 books",
      "image": "assets/images/adv.png",
    },
    {
      "title": "Year one Sofware",
      "subtitle": "8 books",
      "image": "assets/images/sofware.png",
    },
    {
      "title": "Year one Netwok",
      "subtitle": "8 books",
      "image": "assets/images/network.png",
    },
  ];

  var subject = [
    {"title": "Matematique"},
    {"title": "Physique"},
    {"title": "Database"},
    {"title": "Algorythm"},
    {"title": "French"},
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff8f6ff),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 4,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Intellectual zone",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 19.0),
                                      ),
                                      Text(
                                        "Leaning made easy ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                  IconWidget(
                                    backgroundColor: Colors.white,
                                    actions: () {},
                                    icon: Icons.notification_add_outlined,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(50.0))),
                                height: 40.0,
                                child: TextField(
                                  onTap: () => {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => SearchScreen(),
                                      ),
                                    )
                                  },
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      hintText: "Search ...",
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 20.0)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      complicatedImageDemo(),
                      SizedBox(
                        height: 8.0,
                      ),
                      Container(
                        height: 30.0,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: subject.length,
                            itemBuilder: (BuildContext context, int index) {
                              return (Row(
                                children: [
                                  ChipsWidget(
                                      color: Colors.grey,
                                      label: "${subject[index]['title']}"),
                                  ChipsWidget(
                                      color: Color(0xff35387d),
                                      label: "${subject[index]['title']}"),
                                  ChipsWidget(
                                      color: Colors.grey,
                                      label: "${subject[index]['title']}"),
                                  ChipsWidget(
                                      color: Colors.grey,
                                      label: "${subject[index]['title']}"),
                                ],
                              ));
                            }),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      CategoryWidget(
                        label: "Explore categories",
                        actionLabel: "See All",
                        actions: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => CoursesScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                GridView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: className.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 0.2,
                    childAspectRatio: (itemWidth / itemHeight),
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        CategoryCardWidget(
                          image: "${className[index]['image']}",
                          title: "${className[index]['title']}",
                          subTitle: "${className[index]['subtitle']}",
                          actions: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => CoursesScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final List<String> imgList = [
  'https://media.istockphoto.com/photos/school-girl-writing-in-class-picture-id950614324?b=1&k=20&m=950614324&s=170667a&w=0&h=St9PqLSrJF91ZwRnbn-UXHXJ1Uf8CXRzVtbYp3k5Bkw=',
  'https://media.istockphoto.com/photos/african-little-girls-are-learning-english-language-orphanage-in-kenya-picture-id626654952?b=1&k=20&m=626654952&s=170667a&w=0&h=yrs_oZ_SZmdLVeVfuVnCJ1YvJODHTKEDdOBoNeRfU7w=',
  'https://images.unsplash.com/photo-1610412970889-ed4509dc50c1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c2Nob29sJTIwYWZyaWNhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1559085715-23704349e326?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8dGVjaG5vbG9naWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  'https://media.istockphoto.com/photos/stethoscope-keyboard-laptop-computer-isolated-on-blue-background-picture-id1182117644?b=1&k=20&m=1182117644&s=170667a&w=0&h=wfhftZpAZ-i_twi1Fr7Xkt44lAbLr9xCkpkR6bzNm9Q=',
];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                        height: 85.0,
                        child: Image.network(item,
                            fit: BoxFit.cover, width: 1000.0)),
                    /*      Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ), */
                  ],
                )),
          ),
        ))
    .toList();

Widget complicatedImageDemo() {
  return Container(
    child: CarouselSlider(
      options: CarouselOptions(
        height: 90.0,
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
      ),
      items: imageSliders,
    ),
  );
}

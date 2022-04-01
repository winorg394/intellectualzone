import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:intellectual_zone/pages/home/User/Account.dart';
import 'package:intellectual_zone/pages/home/home_screen.dart';
import 'package:intellectual_zone/pages/message/Message.dart';
import 'package:intellectual_zone/pages/notification/notification.dart';
import 'package:permission_handler/permission_handler.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  void requestPersmission() async {
    await PermissionHandler().requestPermissions([PermissionGroup.storage]);
  }

  late PageController _pageController;

  @override
  void initState() {
    requestPersmission();
    _pageController = PageController();

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  var selectedIndex = 0;
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => selectedIndex = index);
          },
          children: <Widget>[
             HomeScreen(),
    NotificationScreen(),
    MessageScreen(),
    Account(),
          ],
        ),
      ), 
            /*     bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 59.0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: const BoxDecoration(
                        //  color:  Colors.blue,
                       // borderRadius: BorderRadius.all(Radius.circular(100.0)),
                        image: DecorationImage(
                          image: AssetImage("assets/images/home.png"),
                          // fit: BoxFit.contain
                        ),
                      ),
                         
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                ),
                      InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                    child: Container(
                     height: 30.0,
                      width: 30.0,
                      decoration: const BoxDecoration(
                        //  color:  Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(100.0)),
                        image: DecorationImage(
                          image: AssetImage("assets/images/megaphone.png"),
                          // fit: BoxFit.contain
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                ),
                     InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: const BoxDecoration(
                        //  color:  Colors.blue,
                       // borderRadius: BorderRadius.all(Radius.circular(100.0)),
                        image: DecorationImage(
                          image: AssetImage("assets/images/chat.png"),
                          // fit: BoxFit.contain
                        ),
                      ),
                  
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                ),
                     InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                    child: Container(
                     height: 30.0,
                      width: 30.0,
                      decoration: const BoxDecoration(
                        //  color:  Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(100.0)),
                        image: DecorationImage(
                          image: AssetImage("assets/images/user.png"),
                          // fit: BoxFit.contain
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      selectedIndex = 3;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ), */
            bottomNavigationBar: BottomNavyBar(
              selectedIndex: selectedIndex,
              showElevation: true, // use this to remove appBar's elevation
              onItemSelected: (index) => setState(() {
                selectedIndex = index;
                _pageController.animateToPage(index,
                    duration: Duration(milliseconds: 300), curve: Curves.ease);
              }),
              items: [
                BottomNavyBarItem(
                  icon: Icon(Icons.apps),
                  title: Text('Home'),
                  activeColor: Colors.red,
                ),
                BottomNavyBarItem(
                    icon: Icon(Icons.notifications),
                    title: Text('Notifications'),
                    activeColor: Colors.purpleAccent),
                BottomNavyBarItem(
                    icon: Icon(Icons.message),
                    title: Text('Messages'),
                    activeColor: Colors.pink),
                BottomNavyBarItem(
                    icon: Icon(Icons.person),
                    title: Text('Account'),
                    activeColor: Colors.blue),
              ],
            )));
  }
}

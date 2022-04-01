import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff8f6ff),
        appBar: AppBar(
          backgroundColor: Color(0xff4748dc),
          title: Text("Search"),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                height: 40.0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 36.0,
                        ),
                        hintText: "Search ...",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0)),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Center(
                    child: Text("Aucun element trouver"),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

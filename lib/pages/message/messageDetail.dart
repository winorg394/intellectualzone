import 'package:flutter/material.dart';

class messageDetail extends StatefulWidget {
  const messageDetail({Key? key}) : super(key: key);

  @override
  State<messageDetail> createState() => _messageDetailState();
}

class _messageDetailState extends State<messageDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Matematique for all 12"),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 10.0, right: 10.0, bottom: 12.0),
                child: ListView(
                  children: [
                    _messageReceived(),
                    _messageSend()
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
            ),
          ],
        ),
      ),
    );
  }
   Widget _messageSend() {
    return (Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
            Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              color: Color(0xff4748dc),
              borderRadius: BorderRadius.all(Radius.circular(100.0))),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                  color: Color(0xff4748dc).withOpacity(0.5),
                  borderRadius: BorderRadius.all(Radius.circular(50.0))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "lorem sgdfh jshdfhgsd shgdfhsgdf shgfhsgfhsgdhfgsgftyteyzte yegthgdhsd"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "12/03/2022 a 12:30",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Voukeng franky",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
    
      ],
    ));
  }

  Widget _messageReceived() {
    return (Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.all(Radius.circular(50.0))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "lorem sgdfh jshdfhgsd shgdfhsgdf shgfhsgfhsgdhfgsgftyteyzte yegthgdhsd"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "12/03/2022 a 12:30",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Voukeng franky",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(100.0))),
        )
      ],
    ));
  }
}

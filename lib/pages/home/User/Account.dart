import 'package:flutter/material.dart';
import 'package:intellectual_zone/core/style/color_pallete.dart';
import 'package:intellectual_zone/pages/home/main_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                color: Color(0xff4748dc),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Dongmo Bercley",
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                        Text(
                          "Student",
                          style: TextStyle(color: Colors.white, fontSize: 19.0),
                        ),
                        Text(
                          "2St year sofware developper - Siantou",
                          style: TextStyle(color: Colors.white, fontSize: 17.0),
                        ),Text(
                          "",
                          style: TextStyle(color: Colors.white, fontSize: 11.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: MediaQuery.of(context).size.width / 2.9,
                child: Center(
                  child: Container(
                    height: 90.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                          image: AssetImage("assets/images/profil.PNG"),
                          fit: BoxFit.contain,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(100.0))),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Container(
              child: Column(
                children: [
                  ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => ModifPassword()));
                      },
                      leading: Icon(Icons.settings),
                      title: Text("Modify My passeword"),
                      subtitle: Text("**********"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20.0,
                      )),
                  ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => ModifProfil()));
                      },
                      leading: Icon(Icons.person),
                      title: Text("Modify My Profile"),
                      subtitle: Text("**********"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20.0,
                      )),
                  ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => ContactUs()));
                      },
                      leading: Icon(Icons.phone),
                      title: Text("Contact-Us"),
                      subtitle: Text("**********"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20.0,
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ModifPassword extends StatefulWidget {
  const ModifPassword({Key? key}) : super(key: key);

  @override
  State<ModifPassword> createState() => _ModifPasswordState();
}

class _ModifPasswordState extends State<ModifPassword> {
  late TextEditingController _passwordrepeatController;
  late TextEditingController _passwordController;
  late TextEditingController _oldpassController;

  @override
  void initState() {
    super.initState();
    _passwordrepeatController = TextEditingController();
    _passwordController = TextEditingController();
    _oldpassController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff4748dc),
          title: Text("Modify Password"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: PaletteColor.formBg,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextFormField(
                    controller: _oldpassController,
                    decoration: InputDecoration(
                      hintText: "Old Password",
                      contentPadding: EdgeInsets.only(
                        left: 10,
                        top: 15.0,
                      ),
                      prefixIcon: Icon(Icons.lock),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: PaletteColor.formBg,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: "New password",
                      contentPadding: EdgeInsets.only(
                        left: 10,
                        top: 15.0,
                      ),
                      prefixIcon: Icon(Icons.vpn_key),
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: PaletteColor.formBg,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextFormField(
                    controller: _passwordrepeatController,
                    decoration: InputDecoration(
                      hintText: "Repeat New password",
                      contentPadding: EdgeInsets.only(
                        left: 10,
                        top: 15.0,
                      ),
                      prefixIcon: Icon(Icons.vpn_key),
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: 45.0,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => null,
                    style: ElevatedButton.styleFrom(
                      primary: PaletteColor.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                    child: Text(
                      "Modifierr",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ModifProfil extends StatefulWidget {
  const ModifProfil({Key? key}) : super(key: key);

  @override
  State<ModifProfil> createState() => _ModifProfilState();
}

class _ModifProfilState extends State<ModifProfil> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff4748dc),
          title: Text("Modify Profil"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: PaletteColor.formBg,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextFormField(
                    //  controller: _oldpassController,
                    decoration: InputDecoration(
                      hintText: "Name",
                      contentPadding: EdgeInsets.only(
                        left: 10,
                        top: 15.0,
                      ),
                      prefixIcon: Icon(Icons.person),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: PaletteColor.formBg,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextFormField(
                    // controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: "Phone",
                      contentPadding: EdgeInsets.only(
                        left: 10,
                        top: 15.0,
                      ),
                      prefixIcon: Icon(Icons.phone),
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: PaletteColor.formBg,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextFormField(
                    //   controller: _passwordrepeatController,
                    decoration: InputDecoration(
                      hintText: "Class",
                      contentPadding: EdgeInsets.only(
                        left: 10,
                        top: 15.0,
                      ),
                      prefixIcon: Icon(Icons.room),
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: PaletteColor.formBg,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextFormField(
                    //   controller: _passwordrepeatController,
                    decoration: InputDecoration(
                      hintText: "School",
                      contentPadding: EdgeInsets.only(
                        left: 10,
                        top: 15.0,
                      ),
                      prefixIcon: Icon(Icons.school),
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: PaletteColor.formBg,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextFormField(
                    //   controller: _passwordrepeatController,
                    decoration: InputDecoration(
                      hintText: "Age",
                      contentPadding: EdgeInsets.only(
                        left: 10,
                        top: 15.0,
                      ),
                      prefixIcon: Icon(Icons.school),
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: 45.0,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => null,
                    style: ElevatedButton.styleFrom(
                      primary: PaletteColor.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                    child: Text(
                      "Modifierr",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff4748dc),
          title: Text("Contact Us"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: PaletteColor.formBg,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextFormField(
                    //  controller: _oldpassController,
                    maxLines: 15,
                    decoration: InputDecoration(
                      hintText: "Type your message",
                      contentPadding: EdgeInsets.only(
                        left: 10,
                        top: 15.0,
                      ),
                      prefixIcon: Icon(Icons.person),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: 45.0,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => null,
                    style: ElevatedButton.styleFrom(
                      primary: PaletteColor.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                    child: Text(
                      "Send",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

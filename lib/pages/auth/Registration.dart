
import 'package:flutter/material.dart';
import 'package:intellectual_zone/core/style/color_pallete.dart';
import 'package:intellectual_zone/pages/auth/Login.dart';
import 'package:intellectual_zone/pages/home/main_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => RegistrationPageState();
}

class RegistrationPageState extends State<RegistrationPage> {
  late TextEditingController _nameController;
  late TextEditingController _passwordController;
  late TextEditingController _ageController;
  late TextEditingController _schoolController;
  late TextEditingController _classController;
  bool showLoader = false;
  String responseMessage = '';


  void initOnboard() async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('Auth', true);
  }

  @override
  void initState() {
    initOnboard();
    super.initState();
    _nameController = TextEditingController();
    _passwordController = TextEditingController();
    _ageController = TextEditingController();
    _schoolController = TextEditingController();
    _classController = TextEditingController();
  }

  _login() async {
    if (_nameController.text.isEmpty || _passwordController.text.isEmpty|| _ageController.text.isEmpty|| _schoolController.text.isEmpty|| _classController.text.isEmpty) {
      setState(() {
        responseMessage = "Veuillez renseigner tous les champs";
      });
      return;
    }

    setState(() {
      showLoader = true;
    });
  }



@override
Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Image.asset(
              "assets/images/logo.png",
              width: 100.0,
            ),
            Text("Intellectual Zone",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0 ),),
            SizedBox(
              height: 50.0,
            ),
            /*   if (responseMessage != null) ...[
                Text(
                  responseMessage,
                  style: TextStyle(color: Colors.red),
                ),
              ], */
            Container(
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
                      // controller: _emailController,
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
                  ), Container(
                    decoration: BoxDecoration(
                      color: PaletteColor.formBg,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: TextFormField(
                      // controller: _emailController,
                      decoration: InputDecoration(
                        hintText: "Class",
                        contentPadding: EdgeInsets.only(
                          left: 10,
                          top: 15.0,
                        ),
                        prefixIcon: Icon(Icons.room),
                        border: InputBorder.none,
                      ),
                    ),
                  ), SizedBox(
                    height: 15.0,
                  ), Container(
                    decoration: BoxDecoration(
                      color: PaletteColor.formBg,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: TextFormField(
                      // controller: _emailController,
                      decoration: InputDecoration(
                        hintText: "School",
                        contentPadding: EdgeInsets.only(
                          left: 10,
                          top: 15.0,
                        ),
                        prefixIcon: Icon(Icons.school),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                   SizedBox(
                    height: 15.0,
                  ), Container(
                    decoration: BoxDecoration(
                      color: PaletteColor.formBg,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: TextFormField(
                      // controller: _emailController,
                      decoration: InputDecoration(
                        hintText: "Age",
                        contentPadding: EdgeInsets.only(
                          left: 10,
                          top: 15.0,
                        ),
                        prefixIcon: Icon(Icons.grade),
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
                        hintText: "Password",
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
                  ), Container(
                    decoration: BoxDecoration(
                      color: PaletteColor.formBg,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: TextFormField(
                      // controller: _passwordController,
                      decoration: InputDecoration(
                        hintText: "Confirmation password",
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
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Mot de passe oublilé ?",
                      style: TextStyle(color: Colors.black54),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    height: 45.0,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => MainHomeScreen(),
                      style: ElevatedButton.styleFrom(
                        primary: PaletteColor.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                      child: Text(
                        "Register",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "i have an account ?",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
}

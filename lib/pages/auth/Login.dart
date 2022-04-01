
import 'package:flutter/material.dart';
import 'package:intellectual_zone/core/style/color_pallete.dart';
import 'package:intellectual_zone/pages/auth/Registration.dart';
import 'package:intellectual_zone/pages/home/main_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  late TextEditingController _passwordController;
  late TextEditingController _emailController;
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
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  _login() async {
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
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
            SizedBox(
              height: 9.0,
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
                        hintText: "Phone",
                        contentPadding: EdgeInsets.only(
                          left: 10,
                          top: 15.0,
                        ),
                        prefixIcon: Icon(Icons.phone),
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
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Fogoten passeword ?",
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
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_)=>MainHomeScreen())
                      ) ,
                      style: ElevatedButton.styleFrom(
                        primary: PaletteColor.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                      child: Text(
                        "Login",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => RegistrationPage() ,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "i don't have an account ?",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Sign-up",
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
}}

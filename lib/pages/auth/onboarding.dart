import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({ Key? key }) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Expanded(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/2,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff4748dc)
                ),
                child: Text("ok les gars"),
              )
            ],
          ),
        ),
      ),
      
    );
  }
}
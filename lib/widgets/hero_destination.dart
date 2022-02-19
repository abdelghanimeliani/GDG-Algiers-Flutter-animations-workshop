import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroDestination extends StatelessWidget {
  const HeroDestination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
            Container(
            height: 400,
            width: 400,
            child: Center(
              child: Hero(
                tag: 'logo',
                  child: Image.asset("assets/gdg_logo.png")) ,
            ),
          ) ,
              SizedBox(height: 30,) ,
             const Text(
                "GDG for once GDG forever" ,
                style: TextStyle(
                  fontWeight: FontWeight.bold ,
                  fontSize: 25 ,
                  color: Colors.grey ,
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

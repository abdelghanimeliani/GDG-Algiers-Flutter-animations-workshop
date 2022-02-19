import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroDestination extends StatelessWidget {
  const HeroDestination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
            children:[ Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: Column(
                children: [
                Container(
                height: 100,
                width: 300,
                child: Center(
                  child: Hero(
                    tag: 'logo',
                      child: Image.asset("assets/gdg_logo.png")) ,
                ),
              ) ,

                 const Text(
                    "GDG for once GDG forever" ,
                    style: TextStyle(
                      fontWeight: FontWeight.bold ,
                      fontSize: 25 ,
                      color: Colors.black45 ,
                    ),
                  )

                ],
              ),
            ),]
          ),
         );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdg_algiers_flutter_animations_workshop/widgets/hero_destination.dart';

class HeroSource extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, PageRouteBuilder(
              transitionDuration: Duration(seconds: 2),
              pageBuilder: (_, __, ___) => HeroDestination())) ;
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 200 ),
          child: Center(
            child: Container(
              height: 300,
              width: 300,
                child: Hero(

                  tag: 'logo',
                    child: Image.asset("assets/gdg_logo.png")) ,
              ),
          ),
        ),
        ),

    ) ;
  }

}
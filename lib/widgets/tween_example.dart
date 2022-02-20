import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TweenAnimationExemple extends StatefulWidget {


  @override
  _TweenAnimationExempleState createState() => _TweenAnimationExempleState();
}

class _TweenAnimationExempleState extends State<TweenAnimationExemple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Image.asset("assets/logo.png"),
            )],
          backgroundColor: Colors.white60,
          title:TweenAnimationBuilder(

            tween: Tween(begin: 0.0 , end: 1.0),
            duration: Duration(seconds: 1),

            child:  Text(
              "GDG Algiers" , style: TextStyle(
              color: Colors.black,
              fontSize: 25 ,
              fontWeight: FontWeight.bold ,
            ),),

            builder: (_, double val , ___)  {
              return Padding(
                padding: EdgeInsets.all(val*20),
                child: Opacity(opacity: val , child: ___,),
              );
            }
          )
        ),
        body: Center(
          child: Text(
            "nothing but the body of the scafold" ,
            style: TextStyle(
              fontSize: 20 ,
              fontWeight: FontWeight.bold ,
            ),
          ),
        )
    );
  }
}

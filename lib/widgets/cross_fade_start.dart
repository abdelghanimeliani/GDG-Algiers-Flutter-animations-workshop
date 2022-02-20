import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrossFadeStart extends StatelessWidget {
  const CrossFadeStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.green,
              ],)
        ),
        child: Image.asset("assets/gdg_logo.png"),
      ),
    );
  }
}

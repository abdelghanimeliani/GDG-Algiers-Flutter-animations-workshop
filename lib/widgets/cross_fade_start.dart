import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrossFadeStart extends StatelessWidget {
  const CrossFadeStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150),
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.white60,
                Colors.blue,
              ],)
        ),
        child: Image.asset("assets/gdg_logo.png"),
      );
  }
}

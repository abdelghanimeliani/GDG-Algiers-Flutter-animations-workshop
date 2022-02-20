import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cross_fade_end.dart';
import 'cross_fade_start.dart';

class CrossFade extends StatefulWidget {
  const CrossFade({Key? key}) : super(key: key);

  @override
  _CrossFadeState createState() => _CrossFadeState();
}

class _CrossFadeState extends State<CrossFade> {
  int state = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (state == 0) {
              setState(() {
                state = 1;
              });
            } else {
              setState(() {
                state = 0;
              });
            }
          },
          child: AnimatedCrossFade(
            duration: Duration(seconds: 1),
            firstChild: CrossFadeStart(),
            secondChild: CrossFadeEnd(),
            crossFadeState: state == 0
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
          ),
        ),
      ),
    );
  }
}
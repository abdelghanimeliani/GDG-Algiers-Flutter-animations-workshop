import 'package:flutter/material.dart';
import 'package:gdg_algiers_flutter_animations_workshop/widgets/animated_container.dart';
import 'package:gdg_algiers_flutter_animations_workshop/widgets/animated_list.dart';
import 'package:gdg_algiers_flutter_animations_workshop/widgets/cross_fade_animation.dart';
import 'package:gdg_algiers_flutter_animations_workshop/widgets/cross_fade_end.dart';
import 'package:gdg_algiers_flutter_animations_workshop/widgets/hero_source.dart';
import 'package:gdg_algiers_flutter_animations_workshop/widgets/scale_transistion.dart';
import 'package:gdg_algiers_flutter_animations_workshop/widgets/slide_transition.dart';
import 'package:gdg_algiers_flutter_animations_workshop/widgets/tween_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),
      //change this with el annimation li rka hab tchoufha
      home: AnimatedListExemple(),
    );
  }
}

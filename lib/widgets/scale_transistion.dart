import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaleTransitionExample extends StatefulWidget {
  const ScaleTransitionExample({Key? key}) : super(key: key);

  @override
  _ScaleTransitionExampleState createState() => _ScaleTransitionExampleState();
}

class _ScaleTransitionExampleState extends State<ScaleTransitionExample>
    with SingleTickerProviderStateMixin {
  var tween ;
  var _animationController ;
  bool _isPlaying = false;
  void animate() {
    if (_isPlaying)
      _animationController.stop();
    else
      _animationController.forward();

    setState(() {
      _isPlaying = !_isPlaying;
    });
  }
  @override
  void initState() {
    super.initState();
     _animationController=AnimationController(vsync:this ,
       duration: Duration(seconds: 3  ) ) ;
    tween = Tween(begin: 1.0 , end: 1.2).animate(
     _animationController
   ) ;

    tween.addStatusListener((status) {
      if (status == AnimationStatus.completed)
        _animationController.reverse();
      else if (status == AnimationStatus.dismissed)
        _animationController.forward();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: animate,
        tooltip: 'Increment',
        child: _isPlaying ? Icon(Icons.pause) : Icon(Icons.play_arrow),
      ),
      body: ScaleTransition(
        scale: tween ,
        child: Container(
          child: Image.asset('assets/gdg_logo.png'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';





class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with SingleTickerProviderStateMixin {

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat();
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOutSine ,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child:  Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
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
        ),
      ),
    );
  }
}

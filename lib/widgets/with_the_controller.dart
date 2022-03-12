class AnimatedIconExp extends StatefulWidget {
  const AnimatedIconExp({Key? key}) : super(key: key);

  @override
  State<AnimatedIconExp> createState() => _AnimatedIconExpState();
}

class _AnimatedIconExpState extends State<AnimatedIconExp> with
    SingleTickerProviderStateMixin{

  late Animation _coloranimation ;
  late AnimationController _controller ;
  bool stt = true;
  @override
  void initState() {

    _controller = AnimationController(
        duration: Duration(milliseconds: 200),
        vsync: this);

    _coloranimation =
        ColorTween(begin: Colors.blueGrey , end: Colors.red)
            .animate(_controller);
    _controller.addStatusListener((status) {
      if(status == AnimationStatus.completed) {
        stt = false ;
      }else{
        stt =true ;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return  IconButton(
          onPressed: () {
            stt== true ?_controller.forward() : _controller.reverse();
          },
          icon: Icon(
            Icons.heart_broken ,
            size: 50,
            color: _coloranimation.value,
          ),
        );
      },

    );
  }
}

import 'package:flutter/material.dart';

class TweenAnimationController extends StatefulWidget {
  const TweenAnimationController({super.key});

  @override
  State<TweenAnimationController> createState() =>
      _TweenAnimationControllerState();
}

class _TweenAnimationControllerState extends State<TweenAnimationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("tween_animation_builder")),
      body: Center(
        child: TweenAnimationBuilder(
          tween: IntTween(begin: 0, end: 100),
          duration: Duration(seconds: 2),

          builder: (context, int value, child) {
            // print("value is $value");
            return Text(value.toString(), style: getstyle());
          },
        ),
      ),
    );
  }

  TextStyle getstyle() {
    return TextStyle(color: Colors.blueAccent, fontSize: 120,fontWeight: FontWeight.bold);
  }
}

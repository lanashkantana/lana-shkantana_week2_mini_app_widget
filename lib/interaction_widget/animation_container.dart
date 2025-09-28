import 'package:flutter/material.dart';
import 'package:testwidget/interaction_widget/tween_animation_controller.dart';

class AnimationContainer extends StatefulWidget {
  const AnimationContainer({super.key});

  @override
  State<AnimationContainer> createState() => _AnimationContainerState();
}

class _AnimationContainerState extends State<AnimationContainer> {
  Color color = Colors.red;
  double dimension = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AnimatedContainer"),centerTitle: true,),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                 
              children: [
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  // curve: Curves.easeInBack,
                  width: dimension,
                  height: dimension,
                  decoration: containerDecoration(),
                ),
               SizedBox(height: 250,),
                ElevatedButton(
                  onPressed: () {  setState(() {
                    dimension == 100 ? dimension = 200 : dimension = 100;    
                    });
                  
                  
                  },
                  child: Text("start animation"),
                ),
            
            
                ElevatedButton(
                  onPressed: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TweenAnimationController()));
                  },
                  child: Text("go to the tween animation page"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration containerDecoration() {
    return BoxDecoration(borderRadius: BorderRadius.circular(12), color: color);
  }
}

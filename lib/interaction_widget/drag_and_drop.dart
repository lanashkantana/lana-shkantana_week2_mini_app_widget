import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DragAndDrop extends StatefulWidget {
  const DragAndDrop({super.key});

  @override
  State<DragAndDrop> createState() => _DragAndDropState();
}

class _DragAndDropState extends State<DragAndDrop> {
  Color color = Colors.black;
  @override
  Widget build(BuildContext context) {
    final showDraggable = color == Colors.black;
    return Scaffold(
      appBar: AppBar(title: Text("Drag&Drop(Draggable,ignorePpointer,\nDragTarget)"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          DragTarget<Color>(
            onAcceptWithDetails: (DragTargetDetails<Color> details) {
              setState(() {
                color = details.data;
              });
            },
            builder: (context, _, __) {
              return Container(color: color, width: 200, height: 200);
            },
          ),

          IgnorePointer(
            ignoring: !showDraggable,
            child: Opacity(
              opacity: showDraggable ? 1 : 0,
              child: Draggable<Color>(
                data: Colors.blue,
                feedback: Container(
                  color: Colors.green,
                  width: 200.w,
                  height: 200.h,
                ),
                childWhenDragging: Container(
                  color: Colors.grey,
                  width: 200.w,
                  height: 200.h,
                ),
                child: Container(
                  color: Colors.blue,
                  width: 200.w,
                  height: 200.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

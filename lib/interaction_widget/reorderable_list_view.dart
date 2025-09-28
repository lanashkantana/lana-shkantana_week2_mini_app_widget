import 'package:flutter/material.dart';

class MyReorderableListView extends StatefulWidget {
  const MyReorderableListView({super.key});

  @override
  State<MyReorderableListView> createState() => _MyReorderableListViewState();
}

class _MyReorderableListViewState extends State<MyReorderableListView> {
  @override
  Widget build(BuildContext context) {
    List<int> items = List<int>.generate(30, (int index) => index);

    return Scaffold(
      appBar: AppBar(title: Text("Dismissble")),
      body: ReorderableListView(
        

        onReorder: (int oldIndex, int newIndex) {
          if (oldIndex < newIndex) {
            setState(() {
              newIndex -=1;
            });
            final int item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          }
        }, children: List.generate(
          items.length,
          (index) => ListTile(
            key: Key('$index'),
            tileColor: items[index].isOdd
                ? const Color.fromARGB(255, 53, 49, 48)
                : Colors.grey,
            title: Text("item $items[index]"),
            trailing: Icon(Icons.drag_handle_sharp),
          ),
        ),
      ),
    );
  }
}

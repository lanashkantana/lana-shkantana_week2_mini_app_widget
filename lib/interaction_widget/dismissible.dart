import 'package:flutter/material.dart';

class Dismissiblee extends StatefulWidget {
  const Dismissiblee({super.key});

  @override
  State<Dismissiblee> createState() => _DismissibleeState();
}

class _DismissibleeState extends State<Dismissiblee> {
  
  Color color = Colors.black;
  @override
  Widget build(BuildContext context) {
   
 List<int> items = List<int>.generate(100, (int index) => index);
    return Scaffold(
      appBar: AppBar(title: Text("Dismissble")),
      body: ListView.builder(
        itemCount: items.length,
        padding: EdgeInsets.symmetric(vertical: 16),
        itemBuilder: (context, index) {
          return Dismissible(
             background: Container(color: Colors.red, child: Icon(Icons.delete)),
            key: ValueKey<int>(items[index]),
          
            onDismissed: (DismissDirection direction) {
              items.removeAt(index);
            },
            
            child: ListTile(title: Text('items ${items[index]}')),
            
          );
        },
      ),
    );
  }
}

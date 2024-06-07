import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> fruits = [
    "Orange",
    "Banana",
    "Apple",
    "Strawberry",
    "Mango",
    "Grapes",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day-06: Dismissible Widget"),
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          final fruit = fruits[index];

          return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.green,
                  ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.red,
                  ));
                }
              },
              background: Container(
                color: Colors.green,
              ),
              secondaryBackground: Container(
                color: Colors.red,
              ),
              key: Key(fruit),
              child: Card(
                child: ListTile(
                  title: Text(fruits[index]),
                ),
              ));
        },
      ),
    );
  }
}

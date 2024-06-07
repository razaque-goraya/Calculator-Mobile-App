import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedvalue = "Orange";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 13: Drop Down Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: double.maxFinite,
                margin: const EdgeInsets.all(10),
                height: 70,
                color: Colors.yellow,
                child: DropdownButton<String>(
                  dropdownColor: Colors.grey.shade200,
                  padding: EdgeInsets.all(20),
                  isExpanded: true,
                  value: selectedvalue,
                  icon: Icon(Icons.arrow_circle_down),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedvalue = newValue!;
                    });
                  },
                  items: <String>["Orange", "Banana", "Mango"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(value: value, child: Text(value));
                  }).toList(),
                ))
          ],
        ),
      ),
    );
  }
}

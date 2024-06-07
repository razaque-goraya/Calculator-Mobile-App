import 'package:flutter/material.dart';

class AlertDialogBox extends StatelessWidget {
  const AlertDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day-09: Alert Dialogue Widget"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Show Alert"),
          onPressed: () {
            _showMyDialog(context);
          },
        ),
      ),
    );
  }
}

//Show Alert Dialogue Message
Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.green,
          elevation: 0,
          scrollable: true, // if our content is more than the height
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          // icon: Icon(Icons.question_mark),
          title: Text("This is your Day 09"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [Text("This is alert 1"), Text("This is Alert 2")],
            ),
          ),
          actions: [
            TextButton(onPressed: () {}, child: Text("Accept")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Reject"))
          ],
        );
      });
}

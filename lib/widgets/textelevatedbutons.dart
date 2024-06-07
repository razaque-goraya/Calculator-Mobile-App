import 'package:flutter/material.dart';

class TextElevatedButons extends StatelessWidget {
  //here Practicing about the TextButton and Elevated Button

  const TextElevatedButons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day_03: Text & Eleveted Buttons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                  overlayColor: MaterialStateProperty.all(Colors.cyan),
                  elevation: MaterialStateProperty.all(30),
                  backgroundColor: MaterialStateProperty.all(Colors.yellow)),
              onPressed: () {},
              child: const Text("Click Me",
                  style: TextStyle(fontSize: 20, color: Colors.black)),
            ),

            const SizedBox(
              height: 20,
            ),

            //To give the height and width property to the Button we wrap it in container
            Container(
              height: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  onPressed: () {
                    print("Like");
                  },
                  child: const Text("Click Me",
                      style: TextStyle(fontSize: 20, color: Colors.white))),
            )
          ],
        ),
      ),
    );
  }
}

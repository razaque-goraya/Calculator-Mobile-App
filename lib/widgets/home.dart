import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //Scaffold is like a roof
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text(
            "Practice App",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),

        //Learning Sixed Bix and Container in Sixed Box we have few properties
        // but in container we have many option we can check with ^+Space
        //we use SizedBox mainly we we need Spacing between two widgets

        //Container
        body: Center(
          child: Container(
            // padding: EdgeInsets.all(10),
            height: 50,
            width: 150,
            decoration: const BoxDecoration(
                color: Colors.blue,
                // shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(20),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                boxShadow: [BoxShadow(blurRadius: 20, color: Colors.red)]),
            child: const Center(
              child: Text(
                "Container",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        )

        //Sized Box practice
        // const SizedBox(
        //   height: 50,
        //   width: 150,
        //   child: Text("This is SizedBox"),
        // ),

        );
  }
}

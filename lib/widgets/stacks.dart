import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StacksWidget extends StatelessWidget {
  const StacksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 50,
        title: Text("Day 15: Stacks Widget"),
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/download.jpg'),
                      fit: BoxFit.cover)),
              // child: Image.asset('assets/download.jpg'),
            ),
          ),
          Positioned(
            top: 80,
            child: Container(
              width: 150,
              color: Colors.yellow,
              height: 50,
              // child: TextField(
              //   style: TextStyle(color: Colors.white),
              //   key: key,
              // ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 150,
              color: Colors.yellow,
              height: 50,
              // child: TextField(
              //   style: TextStyle(color: Colors.white),
              //   key: key,
              // ),
            ),
          )
        ],
      ),

      //these below for Stack and position practice
      // body: Container(
      //   color: Colors.blue,
      //   child: Center(
      //     child: Stack(
      //       children: [
      //         Positioned(
      //           top: 60,
      //           bottom: 30,
      //           child: Container(
      //             decoration: BoxDecoration(
      //                 color: Colors.red,
      //                 borderRadius: BorderRadius.circular(20)),
      //             height: 300,
      //             width: 300,
      //           ),
      //         ),
      //         Center(
      //           child: Container(
      //             height: 150,
      //             width: 150,
      //             color: Colors.yellow,
      //           ),
      //         ),
      //         Center(
      //           child: Container(
      //             height: 50,
      //             width: 50,
      //             color: Colors.purple,
      //           ),
      //         ),

      //         //We can use center also
      //         // Center(
      //         //   child: Container(
      //         //     height: 100,
      //         //     width: 100,
      //         //     color: Colors.purple,
      //         //   ),
      //         // ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

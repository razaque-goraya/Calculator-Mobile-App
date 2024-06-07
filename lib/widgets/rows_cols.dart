import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    //we have to give maximum height and width of the screen for that we use Media Query
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day_2: Rows and Columns"),
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.blue,

        //we can get more properties when we write Wrap instead of Row here
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.grey,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.black,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.red,
        //     ),
        //   ],
        // ),

        //Practicing Wrap
        // child: Wrap(
        //   direction: Axis.vertical,
        //   alignment: WrapAlignment.start,
        //   children: [
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.grey,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.black,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.grey,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.black,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.red,
        //     ),
        //   ],
        // ),

        //Practicing Column
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 60,
              width: 60,
              color: Colors.yellow,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.grey,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.black,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.green,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

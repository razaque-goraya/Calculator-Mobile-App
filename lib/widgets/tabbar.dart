import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      animationDuration: Duration(milliseconds: 400),
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.green,
          title: Text("Day 17: TabBar Widget"),
          bottom: const TabBar(
              unselectedLabelColor: Colors.yellow,
              labelColor: Colors.white,
              indicatorColor: Colors.red,
              overlayColor: MaterialStatePropertyAll(Colors.green),

              // padding: EdgeInsets.all(20),
              tabs: [
                Tab(
                  icon: Icon(Icons.chat),
                  text: "Chats",
                ),
                Tab(
                  icon: Icon(Icons.update),
                  text: "Status",
                ),
                Tab(
                  icon: Icon(Icons.call),
                  text: "Calls",
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Center(child: Text("Chats")),
            ),
            Container(
              child: Center(child: Text("Status")),
            ),
            Container(
              child: Center(child: Text("Calls")),
            )
          ],
        ),
      ),
    );
  }
}

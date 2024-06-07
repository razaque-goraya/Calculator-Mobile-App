import 'package:flutter/material.dart';

class ListGridViews extends StatelessWidget {
  ListGridViews({super.key});

  List<String> titles = ["Title1", "Title2", "Title3", "Title4"];
  Map subtitles = {
    "titles": ["Title1", "Title2", "Title3", "Title4"],
    "subtitle": ["subtitle1", "subtitle2", "subtitle3", "subtitle4"]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day-04: List & Grid Views"),
        backgroundColor: Colors.red,
        elevation: 100,
      ),
      body: Container(
        //List View
        // child: ListView(
        //   children: const [
        //     Card(
        //       child: ListTile(
        //         title: Text("Title"),
        //         subtitle: Text("subtitle"),
        //       ),
        //     )
        //   ],
        // ),

        //ListView.builder
        // child: ListView.builder(
        //     itemCount: titles.length,
        //     itemBuilder: (context, index) {
        //       return Card(
        //         child: ListTile(
        //           onTap: () {
        //             print((Text(subtitles["titles"][index])));
        //           },
        //           leading: const Icon(Icons.co_present_outlined),
        //           title: Text(subtitles["titles"][index]),
        //           subtitle: Text(subtitles["subtitle"][index]),
        //         ),
        //       );
        //     }),

        //Grid View
        // child: GridView(
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2,
        //     crossAxisSpacing: 10,
        //     mainAxisSpacing: 10,
        //     // childAspectRatio: 2 / 3, // widhth/height
        //   ),
        //   children: const [
        //     Card(
        //       margin: EdgeInsets.all(10),
        //       child: Center(child: Text("Card 1")),
        //     ),
        //     Card(
        //       margin: EdgeInsets.all(10),
        //       child: Center(child: Text("Card 2")),
        //     ),
        //     Card(
        //       margin: EdgeInsets.all(10),
        //       child: Center(child: Text("Card 3")),
        //     ),
        //     Card(
        //       margin: EdgeInsets.all(10),
        //       child: Center(child: Text("Card 4")),
        //     ),
        //     Card(
        //       margin: EdgeInsets.all(10),
        //       child: Center(child: Text("Card 5")),
        //     ),
        //     Card(
        //       color: Colors.amber,
        //       margin: EdgeInsets.all(10),
        //       child: Center(child: Text("Card 6")),
        //     ),
        //     Card(
        //       margin: EdgeInsets.all(10),
        //       child: Center(child: Text("Card 7")),
        //     ),
        //   ],
        // ),

        //GridView.builder
        child: GridView.builder(
            itemCount: titles.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Card(
                child: Center(
                  child: Text(titles[index]),
                ),
              );
            }),
      ),
    );
  }
}

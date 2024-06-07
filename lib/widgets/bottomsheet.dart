import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  //Day-10 Bottom Sheet Widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 10: BottomSheet Widget"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Show BottomSheet"),
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Theme.of(context).primaryColor,
                enableDrag: true,
                context: context,
                builder: (context) {
                  return const Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ListTile(
                        title: Text("Title1"),
                        subtitle: Text("subtitl1"),
                      ),
                      ListTile(
                        title: Text("Title1"),
                        subtitle: Text("subtitl1"),
                      ),
                      ListTile(
                        title: Text("Title1"),
                        subtitle: Text("subtitl1"),
                      ),
                      ListTile(
                        title: Text("Title1"),
                        subtitle: Text("subtitl1"),
                      ),
                      ListTile(
                        title: Text("Title1"),
                        subtitle: Text("subtitl1"),
                      ),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}

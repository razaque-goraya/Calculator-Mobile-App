import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          // color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    // color: Colors.grey,
                    padding: const EdgeInsets.all(10),
                    child: const Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://cdn.hashnode.com/res/hashnode/image/upload/v1676272396086/5e6fbc8f-4128-41e1-953f-2e25ae3c264c.jpeg?w=500&h=500&fit=crop&crop=faces&auto=compress,format&format=webp'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Razaque Goraya",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Text(
                              "razaqueg007@gmail.com",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
              const ListTile(
                leading: Icon(Icons.folder),
                title: Text("My Files"),
                subtitle: Text("Private Files"),
              ),
              const ListTile(
                leading: Icon(Icons.group),
                title: Text("Shared with me"),
                subtitle: Text("Private Files"),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text("Starred"),
                subtitle: Text("Private Files"),
              ),
              const ListTile(
                leading: Icon(Icons.delete),
                title: Text("Trash"),
                subtitle: Text("Private Files"),
              ),
              const ListTile(
                leading: Icon(Icons.upload),
                title: Text("Upload"),
                subtitle: Text("Private Files"),
              ),
              const ListTile(
                leading: Icon(Icons.download),
                title: Text("Downloads"),
                subtitle: Text("Private Files"),
              ),
              const Divider(
                height: 10,
              ),
              const ListTile(
                iconColor: Colors.green,
                leading: Icon(
                  Icons.share,
                ),
                title: Text("Share"),
              ),
              const ListTile(
                tileColor: Colors.lime,
                iconColor: Colors.red,
                leading: Icon(Icons.logout),
                title: Text("Logout"),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("Day_7: Drawable Widget"),
      ),
      body: Container(
        child: const Center(
          child: Text("Hey There"),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});
//Day -05
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day-05: SnackBar Widget"),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackBar = SnackBar(
                  action: SnackBarAction(
                    label: "Undo",
                    onPressed: () {},
                    textColor: Colors.black,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  behavior: SnackBarBehavior.floating,
                  padding: const EdgeInsets.all(15),
                  duration: const Duration(milliseconds: 2000),
                  backgroundColor: Colors.red,
                  content: const Center(
                    child: Text("This is Snackbar Notification",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        )),
                  ));
              //to show the SnackBar we have to use scaffold messanger
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text("Show Snackbar"),
          ),
        ),
      ),
    );
  }
}

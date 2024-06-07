import 'package:flutter/material.dart';

class Day19 extends StatefulWidget {
  const Day19({super.key});

  @override
  State<Day19> createState() => _Day19State();
}

class _Day19State extends State<Day19> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    child: Container(
                  height: 500,
                  // color: Colors.yellow,
                  child: Stack(
                    children: [
                      Positioned(
                          child: Container(
                        width: w,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://img-9gag-fun.9cache.com/photo/a3Q5VW5_460s.jpg'),
                                fit: BoxFit.cover)),
                        height: 450,
                      )),
                      Positioned(
                          bottom: 0,
                          right: 40,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGdRk0vLwjUuMUAyJA_ndPhp-Jl506mTdPDDYgFme-9w&s'),
                            radius: 45,
                          )),
                      Positioned(
                          top: 80,
                          right: 40,
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          )),
                      Positioned(
                          top: 80,
                          left: 40,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ))
                    ],
                  ),
                )),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: w,
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Different City tour App",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Mehrabpur City tour App",
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade800),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowIcontext("20", Icons.favorite_rounded),
                  rowIcontext("20", Icons.file_upload),
                  rowIcontext("20", Icons.message),
                  rowIcontext("20", Icons.face),
                ],
              ),
            ),
            Divider(
                // color: Colors.red,
                ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              child: Text(
                "sjfisafbaifboajdsnfojdbsofn jsfhouasfoj  jisafuasb fhsafigasihfb iasfiash fhaysifashf aisfgiasbf isad safahs ashdas asfbda s",
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget rowIcontext(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(icon)
      ],
    );
  }
}

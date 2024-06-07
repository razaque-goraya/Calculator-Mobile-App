import 'package:flutter/material.dart';

class Day20 extends StatelessWidget {
  const Day20({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text(
          'abdul_razaque',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              // color: Colors.red,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 180,
                    // color: Colors.purple,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/88664048?v=4'),
                          radius: 60,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'abdul_razaque',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Flutter App Developer',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    // color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              profileDetails('150', 'Posts'),
                              SizedBox(
                                width: 10,
                              ),
                              profileDetails('5k', 'Followers'),
                              SizedBox(
                                width: 10,
                              ),
                              profileDetails('100', 'Following')
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.blue)),
                                      onPressed: () {},
                                      child: Text(
                                        'Follow',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue, width: 2),
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.arrow_downward,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Container(
              height: 120,
              // color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://scontent.fskz1-1.fna.fbcdn.net/v/t39.30808-6/405793054_1959081324475815_7449458800901258528_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEWEhx1OXBW2wR4PJnkuJiGCVsHhT6h-rsJWweFPqH6u_yjSLNeGPuu6PgdRRvY5sTurVZHWdV_wljLJvv_dctM&_nc_ohc=zgajOS_TKt8Ab6-sjCc&_nc_ht=scontent.fskz1-1.fna&oh=00_AfCXw-R2SOrllPZKj4XOQ8DhNTL-DVC4EMKu4JpACHzsdg&oe=662F2206'),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle,
                            color: Colors.orange),
                      ),
                      Text('Title')
                    ],
                  );
                },
              ),
            ),
            // Container(
            //   height: 100,
            //   color: Colors.green,
            // ),
            Expanded(
                child: Container(
              // color: Colors.yellow,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtUlbge2y2pUrOPdbrrxwCvfjOWqcAu4FZrYxTuRDtkA&s'),
                              fit: BoxFit.cover),
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.all(5),
                      height: 150,
                      width: 150,
                      // color: Colors.red,
                    );
                  }),
            ))
          ],
        ),
      ),
    );
  }

  Widget profileDetails(String text1, text2) {
    return Column(
      children: [
        Text(
          text1,
          style: TextStyle(fontSize: 24),
        ),
        Text(
          text2,
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}

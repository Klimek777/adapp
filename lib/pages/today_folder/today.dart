import 'package:activity_ring/activity_ring.dart';
import 'package:adapp/widgets/meal_widget.dart';
import 'package:adapp/pages/today_folder/todaysmeals.dart';
import 'package:flutter/material.dart';

class TodayPage extends StatefulWidget {
  const TodayPage({Key? key}) : super(key: key);

  @override
  State<TodayPage> createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: ListView(children: [
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 50, 10.0, 8.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(text: TextSpan(text: 'Good Morning 👋')),
                          RichText(
                            text: TextSpan(
                              text: 'Anna Lewandowska',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      InkWell(
                        hoverColor: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.menu,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(
                            'https://thumbs.dreamstime.com/z/beautiful-young-woman-profile-view-beautiful-young-woman-profile-view-beauty-treatment-concept-portrait-pretty-caucasian-girl-125021829.jpg'),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                          child: RichText(
                              text: TextSpan(text: " 🔥 Today's Progress")),
                        )
                      ],
                    ),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 40, 40, 40),
                        child: Ring(
                          radius: 45,
                          width: 10,
                          percent: 80,
                          color: RingColorScheme(
                              ringColor: Colors.pinkAccent,
                              backgroundColor: Colors.white),
                          child: Center(
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: '998 \n Calories',
                                style: (TextStyle(
                                    color: Colors.white, fontSize: 13)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 40, 10, 40),
                        child: Ring(
                          radius: 30,
                          width: 10,
                          percent: 87,
                          color: RingColorScheme(
                              ringColor: Colors.orangeAccent,
                              backgroundColor: Colors.white),
                          child: Center(
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: '87% \n Fat',
                                style: (TextStyle(
                                    color: Colors.white, fontSize: 11)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 40, 10, 40),
                        child: Ring(
                          radius: 30,
                          width: 10,
                          percent: 45,
                          color: RingColorScheme(
                              ringColor: Colors.pink,
                              backgroundColor: Colors.white),
                          child: Center(
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: '45% \n Pro',
                                style: (TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                )),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 40, 10, 40),
                        child: Ring(
                          radius: 30,
                          width: 10,
                          percent: 100,
                          color: RingColorScheme(
                              ringColor: Colors.purpleAccent,
                              backgroundColor: Colors.white),
                          child: Center(
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: '110% \n Carb',
                                style: (TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                )),
                              ),
                            ),
                          ),
                        ),
                      )
                    ]),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.black,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '📓',
                            style: TextStyle(fontSize: 32),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Mój dziennik dietetyczny',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              TodaysMeals()
            ],
          ),
        )),
      ]),
    );
  }
}

import 'package:activity_ring/activity_ring.dart';
import 'package:adapp/pages/today_folder/todaysmeals.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MealplanPage extends StatefulWidget {
  const MealplanPage({Key? key}) : super(key: key);

  @override
  State<MealplanPage> createState() => _MealplanPageState();
}

class _MealplanPageState extends State<MealplanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: ListView(children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TableCalendar(
                  headerStyle: HeaderStyle(
                    leftChevronIcon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    rightChevronIcon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                    formatButtonVisible: false,
                  ),
                  availableCalendarFormats: const {
                    CalendarFormat.week: '',
                    CalendarFormat.month: 'Month'
                  },
                  calendarFormat: CalendarFormat.week,
                  calendarStyle: CalendarStyle(
                      todayDecoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(25, 40, 10, 40),
                              child: Ring(
                                radius: 30,
                                width: 10,
                                percent: 87,
                                color: RingColorScheme(
                                    ringColor: Colors.orangeAccent,
                                    backgroundColor: Colors.grey[200]),
                                child: Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: '87% \n Fat',
                                      style: (TextStyle(
                                          color: Colors.black, fontSize: 11)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(40, 40, 10, 40),
                              child: Ring(
                                radius: 30,
                                width: 10,
                                percent: 45,
                                color: RingColorScheme(
                                    ringColor: Colors.pink,
                                    backgroundColor: Colors.grey[200]),
                                child: Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: '45% \n Pro',
                                      style: (TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(40, 40, 10, 40),
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
                                        color: Colors.black,
                                        fontSize: 11,
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: '🔥 Calories',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: '998/1400',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TodaysMeals(),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

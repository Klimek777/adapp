import 'package:flutter/material.dart';

class MealDetails extends StatefulWidget {
  const MealDetails({Key? key}) : super(key: key);

  @override
  State<MealDetails> createState() => _MealDetailsState();
}

class _MealDetailsState extends State<MealDetails> {
  bool Ingredients = false;
  String bullet = "\u2022 ";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://media.istockphoto.com/photos/homemade-roasted-thanksgiving-day-turkey-picture-id495329828?k=20&m=495329828&s=612x612&w=0&h=P2-lvCymvQQKMB6csjEkfs5U1zM414e-V-P_27aNo7k=',
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 6, 8, 0),
                  child: SafeArea(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  (Icons.close),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                (Icons.favorite_outline),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.32),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 7,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: "Śniadaniowa quesadilla",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.timer_outlined, color: Colors.grey),
                                RichText(
                                    text: TextSpan(
                                        text: '15 min',
                                        style: TextStyle(color: Colors.grey)))
                              ],
                            )
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: TextSpan(
                          text:
                              'Szybkie śniadanie na kazdy budzdet domowy do zrobienia w 15 minut ',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(
                                          Icons.eco_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    RichText(
                                        text: TextSpan(
                                            text: "65g carbs",
                                            style:
                                                TextStyle(color: Colors.black)))
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(
                                          Icons.local_fire_department_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    RichText(
                                        text: TextSpan(
                                            text: "65g kcal",
                                            style:
                                                TextStyle(color: Colors.black)))
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(
                                          Icons.egg_alt_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    RichText(
                                        text: TextSpan(
                                            text: "65g protein",
                                            style:
                                                TextStyle(color: Colors.black)))
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(
                                          Icons.local_pizza_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    RichText(
                                        text: TextSpan(
                                            text: "65g fats",
                                            style:
                                                TextStyle(color: Colors.black)))
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 270,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Ingredients = false;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Ingredients
                                          ? Colors.grey[300]
                                          : Colors.black,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: RichText(
                                        text: TextSpan(
                                          text: 'Ingredients',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Ingredients
                                                  ? Colors.black
                                                  : Colors.white,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Ingredients = true;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Ingredients
                                          ? Colors.black
                                          : Colors.grey[300],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: RichText(
                                        text: TextSpan(
                                          text: 'Instructions',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Ingredients
                                                  ? Colors.white
                                                  : Colors.black,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Ingredients
                          ? Column(
                              children: [
                                Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: 'Instructions',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                RichText(
                                    text: TextSpan(
                                        text:
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                        style: TextStyle(color: Colors.black)))
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: "Ingredients",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: "Add all to cart",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: "6 items",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                text: bullet,
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 30),
                                              ),
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                  text: "Onion",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18)),
                                            ),
                                          ],
                                        ),
                                        RichText(
                                            text: TextSpan(
                                                text: "1 pcs",
                                                style: TextStyle(
                                                    color: Colors.black)))
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

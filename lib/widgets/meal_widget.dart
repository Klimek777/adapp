import 'package:adapp/widgets/meal_details_widget.dart';
import 'package:flutter/material.dart';

class CompleteMeal {
  final String image;
  final String title;
  final String kategoria;
  final String opis;
  final Map<String, int> ingreditens;
  final String instructions;
  final int kcal;
  final int carbs;
  final int protein;
  final int fats;
  final int minuts;

  CompleteMeal(
      this.image,
      this.title,
      this.kategoria,
      this.opis,
      this.ingreditens,
      this.instructions,
      this.kcal,
      this.carbs,
      this.fats,
      this.minuts,
      this.protein);
}

final listOfMeals = [
  CompleteMeal(
    'https://media.istockphoto.com/photos/homemade-roasted-thanksgiving-day-turkey-picture-id495329828?k=20&m=495329828&s=612x612&w=0&h=P2-lvCymvQQKMB6csjEkfs5U1zM414e-V-P_27aNo7k=',
    'Śniadaniowa quesadilla',
    'Śniadanie',
    'Szybkie śniadanie na kadzdy budzet domowy',
    {
      'Onion': 1,
      'Shit': 2,
    },
    'Lorem ipsum bla bla bla bla bla bla  ',
    200,
    30,
    20,
    40,
    50,
  ),
  CompleteMeal(
    'https://staticsmaker.iplsc.com/smaker_prod_2021_10_06/2cc9f03b97a3019b6f5efaa28552ec0d-lg.jpg',
    'Bułeczki kolacyjne',
    'Kolacja',
    'Bułeczki zapiekane z jajkiem',
    {'Egs': 5, 'Paprika': 2, 'Tomatoes': 1},
    'Lorem ipsum bla bla bla bla bla bla  ',
    150,
    34,
    22,
    41,
    56,
  ),
  CompleteMeal(
    'https://staticsmaker.iplsc.com/smaker_prod_2021_10_06/2cc9f03b97a3019b6f5efaa28552ec0d-lg.jpg',
    'Bułeczki kolacyjne',
    'Kolacja',
    'Bułeczki zapiekane z jajkiem',
    {'Egs': 5, 'Paprika': 2, 'Tomatoes': 1},
    'Lorem ipsum bla bla bla bla bla bla  ',
    150,
    34,
    22,
    41,
    56,
  )
];

class MealWidget extends StatefulWidget {
  final String image;
  final String title;
  final String kategoria;
  final String opis;
  final Map<String, int> ingreditens;
  final String instructions;
  final int kcal;
  final Function onClick;
  final int carbs;
  final int protein;
  final int fats;
  final int minuts;

  MealWidget({
    required this.image,
    required this.title,
    required this.opis,
    required this.ingreditens,
    required this.instructions,
    required this.kategoria,
    required this.kcal,
    required this.onClick,
    required this.carbs,
    required this.protein,
    required this.fats,
    required this.minuts,
  });
  @override
  State<MealWidget> createState() => _MealWidgetState();
}

class _MealWidgetState extends State<MealWidget> {
  bool added = false;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
        child: Row(
          children: [
            Container(
              height: 120,
              width: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.network(
                  '${widget.image}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (widget.kategoria == 'Śniadanie') ...[
                            RichText(
                              text: TextSpan(
                                  text: '🍳', style: TextStyle(fontSize: 30)),
                            ),
                            RichText(
                              text: TextSpan(
                                text: ' Śniadanie',
                              ),
                            ),
                          ] else if (widget.kategoria == 'Obiad') ...[
                            RichText(
                              text: TextSpan(
                                  text: '🍱', style: TextStyle(fontSize: 30)),
                            ),
                            RichText(
                              text: TextSpan(
                                text: ' Obiad',
                              ),
                            ),
                          ] else ...[
                            RichText(
                              text: TextSpan(
                                  text: '🍲', style: TextStyle(fontSize: 30)),
                            ),
                            RichText(
                              text: TextSpan(
                                text: ' Kolacja',
                              ),
                            ),
                          ]
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Padding(
                          padding: const EdgeInsets.all(3.5),
                          child: RichText(
                            text: TextSpan(
                              text: '${widget.kcal}' + ' kcal',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(text: widget.title),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(11, 5, 11, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.onClick();
                                  });
                                },
                                // onTap: () {
                                //   setState(() {
                                //     final post = listOfMeals[index];
                                //     Navigator.of(
                                //       context,
                                //     ).push(
                                //       MaterialPageRoute(
                                //         builder: (context) => MealDetails(
                                //           image: post.image,
                                //           title: post.title,
                                //           opis: post.opis,
                                //           ingreditens: post.ingreditens,
                                //           instructions: post.instructions,
                                //           kategoria: post.kategoria,
                                //           kcal: post.kcal,
                                //           protein: post.protein,
                                //           carbs: post.carbs,
                                //           fats: post.fats,
                                //           minuts: post.minuts,
                                //         ),
                                //       ),
                                //     );
                                //   });
                                // },
                                child: RichText(
                                  text: TextSpan(
                                      text: 'Więcej',
                                      style: TextStyle(fontSize: 10)),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.lightBlue,
                                size: 13,
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    added = !added;
                                  });
                                },
                                child: added == false
                                    ? RichText(
                                        text: TextSpan(
                                            text: 'Dodaj do dziennika ',
                                            style: TextStyle(fontSize: 10)),
                                      )
                                    : RichText(
                                        text: TextSpan(
                                            text: 'Dodane do dziennika ',
                                            style: TextStyle(fontSize: 10)),
                                      ),
                              ),
                              added == false
                                  ? Container(
                                      decoration: BoxDecoration(
                                          color: Colors.lightBlue,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(1.5),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 13,
                                        ),
                                      ),
                                    )
                                  : Container(
                                      decoration: BoxDecoration(
                                          color: Colors.lightBlue,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(1.5),
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size: 13,
                                        ),
                                      ),
                                    )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Supper extends StatefulWidget {
  final String title;
  final String kcal;
  final String photo;
  Supper(this.title, this.kcal, this.photo);
  @override
  State<Supper> createState() => _SupperState();
}

class _SupperState extends State<Supper> {
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
                  widget.photo,
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
                          RichText(
                            text: TextSpan(
                                text: '🍲', style: TextStyle(fontSize: 30)),
                          ),
                          RichText(
                            text: TextSpan(
                              text: ' Kolacja',
                            ),
                          ),
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
                              text: widget.kcal + ' kcal',
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
                              RichText(
                                text: TextSpan(
                                    text: 'Więcej',
                                    style: TextStyle(fontSize: 10)),
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
                              RichText(
                                text: TextSpan(
                                    text: 'Dodaj do dziennika ',
                                    style: TextStyle(fontSize: 10)),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Padding(
                                  padding: const EdgeInsets.all(1.5),
                                  child: Icon(
                                    Icons.add,
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

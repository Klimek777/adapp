import 'package:flutter/material.dart';

class ShoppingListWidget extends StatefulWidget {
  const ShoppingListWidget({Key? key}) : super(key: key);

  @override
  State<ShoppingListWidget> createState() => _ShoppingListWidgetState();
}

class _ShoppingListWidgetState extends State<ShoppingListWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[200]!,
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: Image.network(
                              'https://toppng.com/uploads/preview/brown-onion-115283502637y3hhhogtu.png'),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Onion",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ClipRRect(
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.blue),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.blue,
                              size: 20,
                            )),
                      ),
                      SizedBox(width: 10),
                      RichText(
                        text: TextSpan(
                          text: "2",
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ClipRRect(
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.blue),
                            ),
                            child: Icon(
                              Icons.remove,
                              color: Colors.blue,
                              size: 20,
                            )),
                      ),
                    ],
                  )
                ]),
          ),
        ),
      ],
    );
  }
}

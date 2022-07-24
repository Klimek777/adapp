import 'package:adapp/widgets/shopping_list_widget.dart';
import 'package:flutter/material.dart';

class ShoplistPage extends StatefulWidget {
  const ShoplistPage({Key? key}) : super(key: key);

  @override
  State<ShoplistPage> createState() => _ShoplistPageState();
}

class _ShoplistPageState extends State<ShoplistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Center(
          child: RichText(
            text: TextSpan(
              text: "Shopping List",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ShoppingListWidget()
      ],
    )));
  }
}

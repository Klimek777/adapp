import 'package:adapp/widgets/meal_widget.dart';
import 'package:adapp/widgets/meal_details_widget.dart';
import 'package:flutter/material.dart';

class TodaysMeals extends StatefulWidget {
  @override
  State<TodaysMeals> createState() => _TodaysMealsState();
}

class _TodaysMealsState extends State<TodaysMeals> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150 * listOfMeals.length.toDouble(),
      child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          itemCount: listOfMeals.length,
          separatorBuilder: (context, index) => SizedBox(height: 10),
          itemBuilder: ((context, index) {
            final post = listOfMeals[index];
            return MealWidget(
              image: post.image,
              title: post.title,
              opis: post.opis,
              ingreditens: post.ingreditens,
              instructions: post.instructions,
              kategoria: post.kategoria,
              kcal: post.kcal,
              protein: post.protein,
              carbs: post.carbs,
              fats: post.fats,
              minuts: post.minuts,
              onClick: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => MealDetails(
                          image: post.image,
                          title: post.title,
                          opis: post.opis,
                          ingreditens: post.ingreditens,
                          instructions: post.instructions,
                          kategoria: post.kategoria,
                          kcal: post.kcal,
                          protein: post.protein,
                          carbs: post.carbs,
                          fats: post.fats,
                          minuts: post.minuts,
                        )));
              },
            );
          })),
    );
  }
}

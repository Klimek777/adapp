import 'package:adapp/pages/today_folder/breakfast.dart';
import 'package:adapp/pages/today_folder/dinner.dart';
import 'package:adapp/pages/today_folder/supper.dart';
import 'package:flutter/material.dart';

class TodaysMeal {
  final String title;
  final String kcal;
  final String photo;
  TodaysMeal(this.title, this.kcal, this.photo);
}

final TodaysMealsList = [
  TodaysMeal('Śniadaniowa quesadilla z dipami', '200',
      'https://static.toiimg.com/photo/76942221.cms'),
  TodaysMeal('Kurczak z rozna + warzywa', '200',
      'https://media.istockphoto.com/photos/homemade-roasted-thanksgiving-day-turkey-picture-id495329828?k=20&m=495329828&s=612x612&w=0&h=P2-lvCymvQQKMB6csjEkfs5U1zM414e-V-P_27aNo7k='),
  TodaysMeal('Miska warzyw z ryzem i indykiem', '200',
      'https://images.contentstack.io/v3/assets/blt45c082eaf9747747/bltc1f5d681043ec5e0/5de0ba2ef1b4be78076c2a6a/Hot_meal_header_copy.jpg?width=1200&height=630&fit=crop'),
];

class TodaysMeals extends StatefulWidget {
  @override
  State<TodaysMeals> createState() => _TodaysMealsState();
}

class _TodaysMealsState extends State<TodaysMeals> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 3,
          separatorBuilder: (context, index) => SizedBox(height: 10),
          itemBuilder: ((context, index) {
            final fromlist = TodaysMealsList[index];

            if (index == 0) {
              return Breakfast(fromlist.title, fromlist.kcal, fromlist.photo);
            } else if (index == 1) {
              return Dinner(fromlist.title, fromlist.kcal, fromlist.photo);
            } else
              return Supper(fromlist.title, fromlist.kcal, fromlist.photo);
          })),
    );
  }
}

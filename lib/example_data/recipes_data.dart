class Recipes_Data {
  String photo;
  String nazwa;
  String skladniki;
  double ilosc_skladnika;
  String opis;
  double carbs;
  double kcal;
  double protein;
  double fats;
  String instructions;
  double time;

  Recipes_Data(
      this.photo,
      this.nazwa,
      this.skladniki,
      this.ilosc_skladnika,
      this.carbs,
      this.fats,
      this.instructions,
      this.kcal,
      this.opis,
      this.protein,
      this.time);
}

Recipes_Data sniadanie = new Recipes_Data("photo", "nazwa", "skladniki", 2, 23,
    23, "instructions", 343, "opis", 23, 14);

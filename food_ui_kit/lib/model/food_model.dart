class FoodModel {
  String name;
  String image;

  String price;

  FoodModel({
    required this.name,
    required this.image,

    required this.price,
  });
}

List<FoodModel> foods = [
  FoodModel(
    name: 'Veggie tomato mix',
    image: 'assets/foods/veggie.png',
    price: '500',
  ),
  FoodModel(
    name: 'Egg and cucumbers',
    image: 'assets/foods/egg.png',
    price: '600',
  ),
  FoodModel(
    name: 'Fried chicken',
    image: 'assets/foods/fried.png',
    price: '800',
  ),
];

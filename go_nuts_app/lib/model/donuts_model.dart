class DonutsModel {
  String name;
  String imagePath;
  int price;
  DonutsModel({
    required this.name,
    required this.imagePath,
    required this.price,
  });
}

List<DonutsModel> donutsList = [
  DonutsModel(
    name: 'Chocolate Cherry',
    imagePath: '',
    price: 10,
  ),
  DonutsModel(
    name: 'Strawberry Rain',
    imagePath: '',
    price: 10,
  ),
  DonutsModel(
    name: 'Strawberry Cream',
    imagePath: '',
    price: 10,
  ),
];

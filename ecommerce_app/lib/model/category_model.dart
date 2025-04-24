class CategoryModel {
  final String name;
  final String image;

  CategoryModel({required this.name, required this.image});

  static List<CategoryModel> categoryList = [
    CategoryModel(
      name: 'Women',
      image: 'assets/images/women.png',
    ),
    CategoryModel(
      name: 'Men',
      image: 'assets/images/men.png',
    ),
    CategoryModel(
      name: 'Teens',
      image: 'assets/images/teen.png',
    ),
    CategoryModel(
      name: 'Baby',
      image: 'assets/images/baby.png',
    ),
    CategoryModel(
      name: 'Kids',
      image: 'assets/images/kids.png',
    ),
  ];
}

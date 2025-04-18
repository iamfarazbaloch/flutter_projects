import 'package:flutter/material.dart';
import 'package:food_app/model/prduct.dart' show Products;

class Shop extends ChangeNotifier {
  final List<Products> product = [
    Products(
      imagePath: 'assets/images/image 6.png',
      title: 'Cheese Burger',
      subTitle: "Wendy's Burger",
      description:
          "The Cheeseburger Wendy's Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles.",
      rating: 4.5,
      price: 10.99,
    ),
    Products(
      imagePath: 'assets/images/image 5.png',
      title: 'Hamburger',
      subTitle: "Veggie Burger",
      description:
          "Enjoy our delicious Hamburger Veggie Burger, made with a savory blend of fresh vegetables and herbs, topped with crisp lettuce, juicy tomatoes, and tangy pickles, all served on a soft, toasted bun. ",
      rating: 4.9,
      price: 12.99,
    ),
    Products(
      imagePath: 'assets/images/image 4.png',
      title: 'Hamburger',
      subTitle: "Chicken Burger",
      description:
          "Our chicken burger is a delicious and healthier alternative to traditional beef burgers, perfect for those looking for a lighter meal option. Try it today and experience the mouth-watering flavors of our Hamburger Chicken Burger!",
      rating: 4.6,
      price: 11.99,
    ),
    Products(
      imagePath: 'assets/images/image 6.png',
      title: 'Hamburger',
      subTitle: "Fried Chicken Burger",
      description:
          "Indulge in our crispy and savory Fried Chicken Burger, made with a juicy chicken patty, hand-breaded and deep-fried to perfection, served on a warm bun with lettuce, tomato, and a creamy sauce.",
      rating: 4.4,
      price: 13.99,
    ),
  ];
}

// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class CuratedModel {
  final String name;
  final String image;
  final String description;
  final String category;
  final double rating;
  final int review;
  final int price;
  final List<Color> color;
  final List<String> size;
  bool isChecked;

  CuratedModel({
    required this.name,
    required this.image,
    required this.description,
    required this.review,
    required this.category,
    required this.rating,
    required this.price,
    required this.isChecked,
    required this.color,
    required this.size,
  });
}

List<CuratedModel> fashion = [
  CuratedModel(
    name: 'Oversized T-Shirt',
    image: 'assets/category/image2.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 12,
    category: 'Fur Coat',
    rating: 4.5,
    price: 1200,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'Kids T-Shirt',
    image: 'assets/category/image1.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 16,
    category: 'Fur Coat',
    rating: 4.2,
    price: 1100,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'Baby T-Shirt',
    image: 'assets/category/image3.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 12,
    category: 'Fur Coat',
    rating: 4.7,
    price: 1200,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'Baby Girls T-Shirt',
    image: 'assets/category/image4.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 12,
    category: 'Fur Coat',
    rating: 4.5,
    price: 1500,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: ' T-Shirt',
    image: 'assets/category/image6.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 12,
    category: 'Fur Coat',
    rating: 4.5,
    price: 1200,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'Bunny T-Shirt',
    image: 'assets/category/image7.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 12,
    category: 'Fur Coat',
    rating: 4.5,
    price: 1200,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'Oversized Men T-Shirt',
    image: 'assets/category/image8.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 12,
    category: 'Fur Coat',
    rating: 4.5,
    price: 1200,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'Men Jacket',
    image: 'assets/category/image9.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 12,
    category: 'Fur Coat',
    rating: 4.5,
    price: 1200,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'Boys Cute Jacket',
    image: 'assets/category/image10.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 12,
    category: 'Fur Coat',
    rating: 4.5,
    price: 1200,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'Baby Suit',
    image: 'assets/category/image11.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 12,
    category: 'Fur Coat',
    rating: 4.5,
    price: 1200,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'Baby Suit Mom&Dad',
    image: 'assets/category/image12.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 19,
    category: 'Fur Coat',
    rating: 4.1,
    price: 1200,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'T-Shirt',
    image: 'assets/category/image13.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 12,
    category: 'Fur Coat',
    rating: 4.9,
    price: 1500,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'Baby T-Shirt',
    image: 'assets/category/image15.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 12,
    category: 'Fur Coat',
    rating: 4.5,
    price: 1200,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'Girls LongT-Shirt',
    image: 'assets/category/image16.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 12,
    category: 'Fur Coat',
    rating: 4.5,
    price: 1200,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'Firaq T-Shirt',
    image: 'assets/category/image17.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 12,
    category: 'Fur Coat',
    rating: 4.7,
    price: 1500,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'Boys T-Shirt',
    image: 'assets/category/image22.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 19,
    category: 'Fur Coat',
    rating: 5,
    price: 1000,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'Oversized T-Shirt',
    image: 'assets/category/image23.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 12,
    category: 'Fur Coat',
    rating: 4.5,
    price: 1200,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'Oversized Nasa T-Shirt',
    image: 'assets/category/image24.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 12,
    category: 'Fur Coat',
    rating: 4.5,
    price: 1200,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'Simple T-Shirt',
    image: 'assets/category/image25.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 12,
    category: 'Fur Coat',
    rating: 4.5,
    price: 1200,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'Cute Deer T-Shirt',
    image: 'assets/category/image26.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 12,
    category: 'Fur Coat',
    rating: 4.5,
    price: 1200,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'Girls T-Shirt',
    image: 'assets/category/image27.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 10,
    category: 'Fur Coat',
    rating: 4.5,
    price: 1900,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
  CuratedModel(
    name: 'Oversized Girls T-Shirt',
    image: 'assets/category/image28.png',
    description:
        'The oversized t-shirt is an Anglicism meaning a supersized t-shirt, it goes against the fashion of fitted t-shirts, which are meant to be worn close to the body. The oversized t-shirt is therefore a loose-fitting t-shirt that will give the impression of wearing a "too big" t-shirt one or two sizes up.',
    review: 12,
    category: 'Fur Coat',
    rating: 4.5,
    price: 1200,
    isChecked: false,
    color: <Color>[Colors.black, Colors.blue],
    size: <String>['S', 'M', 'L', 'XL', 'XXL'],
  ),
];

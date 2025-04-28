import 'package:flutter/material.dart';

class TodayOffer {
  final String title;
  final String description;
  final String image;
  final double price;
  final Color color;

  TodayOffer({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.color,
  });
}

List<TodayOffer> todayOffers = [
  TodayOffer(
    title: "Strawberry Wheel",
    description:
        "These Baked Strawberry Donuts are filled with fresh strawberries...",
    image: "assets/products/strawberry.png",
    price: 10.99,
    color: Color(0xFFD7E4F6),
  ),
  TodayOffer(
    title: "Chocolate Glazed",
    description:
        "Moist and fluffy baked chocolate donuts full of chocolate flavor.",
    image: "assets/products/chocolate.png",
    price: 12.99,
    color: Colors.pink.shade50,
  ),
];

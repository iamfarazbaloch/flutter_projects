import 'package:flutter/material.dart';
import 'package:grocery_app/model/product.dart'
    show Grocery;
import 'package:grocery_app/widgets/my_button.dart';

class DetailPage extends StatefulWidget {
  final Grocery product;
  const DetailPage({super.key, required this.product});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final product = widget.product;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.arrow_back_ios),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: product.name,
                      child: Center(
                        child: Image.asset(
                          product.image,
                          height: 250,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      product.category,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          product.rate.toString(),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      product.description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.2,
                        wordSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(
                20,
                20,
                20,
                30,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
              width: double.infinity,
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price.toStringAsFixed(2)}",
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  MyButton(
                    onTap: () {},
                    title: 'Add to Cart',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

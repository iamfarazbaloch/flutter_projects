import 'package:flutter/material.dart';
import 'package:food_app/model/prduct.dart';
import 'package:food_app/pages/order_page.dart';
import 'package:food_app/widgets/my_button.dart';

class DetailPage extends StatefulWidget {
  final Products products;

  const DetailPage({super.key, required this.products});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int quantity = 1;
  double spiciness = 3;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Icon(Icons.search, size: 30.0),
          SizedBox(width: 10.0),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(widget.products.imagePath),
            ),
            const SizedBox(height: 20),
            Text(
              widget.products.title,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              widget.products.subTitle,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text('Rating: ${widget.products.rating} ⭐'),
            const SizedBox(height: 20),
            Text(
              'Description: ${widget.products.description}',
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 210),

            // Spiciness + Quantity Row
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                // Spiciness Slider
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        '🌶️ Spiciness: ${spiciness.toInt()}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Slider(
                        value: spiciness,
                        min: 1,
                        max: 5,
                        divisions: 4,
                        label: spiciness.toInt().toString(),
                        activeColor: Colors.red,
                        onChanged: (value) {
                          setState(() {
                            spiciness = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 20),

                // Quantity Control
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                        onPressed: decrementQuantity,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      quantity.toString(),
                      style: const TextStyle(fontSize: 18),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onPressed: incrementQuantity,
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                MyButton(
                  text:
                      '\$${(widget.products.price * quantity).toStringAsFixed(2)}',
                  color: Colors.red,
                  onTap: () {},
                ),
                MyButton(
                  text: 'Order Now',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => OrderPage(
                              price:
                                  widget.products.price *
                                  quantity,
                            ),
                      ),
                    );
                  },
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

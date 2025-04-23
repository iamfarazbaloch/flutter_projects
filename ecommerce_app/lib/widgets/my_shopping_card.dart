import 'package:ecommerce_app/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyShoppingCard extends StatelessWidget {
  const MyShoppingCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey.shade400,
      width: size.width,
      height: size.height * 0.25,

      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New Collection',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Text(
                      '20',
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '%\nOff',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ],
                ),
                Gap(20),
                MyButton(
                  onTap: () {},
                  text: 'Shop Now',
                  color: Colors.black,
                ),
              ],
            ),
          ),

          // Image
          const SizedBox(width: 16),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/images/girls.png',
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}

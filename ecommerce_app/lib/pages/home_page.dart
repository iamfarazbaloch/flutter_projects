import 'package:ecommerce_app/widgets/my_shopping_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                  ),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/logo.png'),
                      Icon(
                        Icons.shopping_bag_outlined,
                        size: 40,
                      ),
                    ],
                  ),
                ),
                Gap(20),
                MyShoppingCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

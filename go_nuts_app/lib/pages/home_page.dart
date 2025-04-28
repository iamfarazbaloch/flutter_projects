import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_nuts_app/model/today_offer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Let's Gonuts!",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFF7074),
                      fontSize: 28.0,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFFED8DF),
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                    child: const Icon(
                      Icons.search_rounded,
                      color: Color(0xFFFF7074),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: const [
                  Text('Order your favorite donuts here!'),
                  Gap(40),
                  Text(
                    'Today Offers',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            SizedBox(
              height: 320,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 16.0),
                itemCount: todayOffers.length,
                itemBuilder: (context, index) {
                  final offer = todayOffers[index];
                  return Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        margin: const EdgeInsets.only(
                          right: 16.0,
                        ),
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(15.0),
                          color: offer.color,
                        ),
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(
                                9,
                              ),
                              padding: const EdgeInsets.all(
                                8,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(
                                      15.0,
                                    ),
                              ),
                              child: const Icon(
                                Icons
                                    .favorite_border_outlined,
                                color: Color(0xFFFF7074),
                                size: 30,
                              ),
                            ),
                            // Wrap Image.asset inside a Stack to position it
                            Stack(
                              children: [
                                Image.asset(
                                  offer.image,
                                  height: 100,
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(
                                8.0,
                              ),
                              child: Text(
                                offer.title,
                                style: const TextStyle(
                                  fontWeight:
                                      FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                              child: Text(
                                offer.description,
                                maxLines: 2,
                                overflow:
                                    TextOverflow.ellipsis,
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                    vertical: 8,
                                  ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '\$${offer.price.toStringAsFixed(2)}',
                                    style: const TextStyle(
                                      fontWeight:
                                          FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Gap(20),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Donuts',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:grocery_app/model/product.dart';
import 'package:grocery_app/widgets/my_search_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedCategoryIndex = 0;
  String searchQuery = '';
  TextEditingController searchController =
      TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final selectedCategory =
        groceryCategories[selectedCategoryIndex];

    final filteredGroceries =
        selectedCategory == 'ALL'
            ? groceryItems
            : groceryItems
                .where(
                  (item) =>
                      item.category.trim().toLowerCase() ==
                      selectedCategory.toLowerCase(),
                )
                .toList();

    final filteredCategoryGroceries =
        filteredGroceries
            .where(
              (item) => item.name.toLowerCase().contains(
                searchQuery.toLowerCase(),
              ),
            )
            .toList();

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting Row
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Welcome\n',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                        TextSpan(
                          text: 'Muhammad Faraz',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            // Search Field
            MySearchField(
              controller: searchController,
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),

            const SizedBox(height: 12),

            // Category Tabs
            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: groceryCategories.length,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                itemBuilder: (context, index) {
                  final isSelected =
                      index == selectedCategoryIndex;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategoryIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                      ),
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.center,
                        children: [
                          Text(
                            groceryCategories[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color:
                                  isSelected
                                      ? Colors.green
                                      : Colors
                                          .grey
                                          .shade400,
                            ),
                          ),
                          const SizedBox(height: 6),
                          if (isSelected)
                            Container(
                              height: 4,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius:
                                    BorderRadius.circular(
                                      2,
                                    ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 16),

            // Filtered Items (Based on Search & Category)
            filteredCategoryGroceries.isEmpty
                ? const Center(
                  child: Text('Items not found'),
                )
                : SizedBox(
                  height: 280,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    itemCount:
                        filteredCategoryGroceries.length,
                    itemBuilder: (context, index) {
                      final item =
                          filteredCategoryGroceries[index];
                      return Container(
                        width: 200,
                        margin: const EdgeInsets.only(
                          left: 16,
                        ),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(8),
                          color: Colors.grey.shade100,
                        ),
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 14),
                            Image.asset(
                              item.image,
                              height: 120,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              item.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              maxLines: 1,
                              overflow:
                                  TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start,
                                    children: [
                                      Text(
                                        item.category,
                                        style:
                                            const TextStyle(
                                              color:
                                                  Colors
                                                      .grey,
                                              fontSize: 15,
                                              fontWeight:
                                                  FontWeight
                                                      .bold,
                                            ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "\$${item.price.toStringAsFixed(2)}",
                                        style:
                                            const TextStyle(
                                              fontSize: 18,
                                              color:
                                                  Colors
                                                      .green,
                                              fontWeight:
                                                  FontWeight
                                                      .bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.all(
                                        10,
                                      ),
                                  decoration: const BoxDecoration(
                                    color:
                                        Colors.orangeAccent,
                                    borderRadius:
                                        BorderRadius.only(
                                          topLeft:
                                              Radius.circular(
                                                10,
                                              ),
                                          bottomLeft:
                                              Radius.circular(
                                                10,
                                              ),
                                        ),
                                  ),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.shopping_cart,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

            const SizedBox(height: 20),

            // Recent Shop Title
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Recent Shop',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Recent Shop (No filter here!)
            SizedBox(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                itemCount: groceryItems.length,
                itemBuilder: (context, index) {
                  final item = groceryItems[index];
                  return Container(
                    width: 350,
                    margin: const EdgeInsets.only(
                      right: 16,
                    ),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            item.image,
                            height: 60,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow:
                                  TextOverflow.ellipsis,
                            ),
                            Text(
                              item.category,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                              maxLines: 1,
                              overflow:
                                  TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text(
                          "\$${item.price.toStringAsFixed(2)}",
                          style: const TextStyle(
                            fontSize: 22,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/widgets/my_button.dart';
import 'package:food_app/widgets/payment_card.dart';

class OrderPage extends StatefulWidget {
  final double price;

  const OrderPage({super.key, required this.price});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  String selectedCard = 'card1';
  bool agreeTerms = false;

  @override
  Widget build(BuildContext context) {
    double tax = 0.3;
    double deliveryCharges = 1.5;
    double total = widget.price + tax + deliveryCharges;

    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.search, size: 38),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Order Summary',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              child: Column(
                children: [
                  _buildSummaryRow('Order', widget.price),
                  _buildSummaryRow('Taxes', tax),
                  _buildSummaryRow(
                    'Delivery Charges',
                    deliveryCharges,
                  ),
                  SizedBox(height: 10),
                  Divider(thickness: 1),
                  _buildSummaryRow(
                    'Total:',
                    total,
                    isBold: true,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Estimated Delivery Time:',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '15-20 mins',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Payment Method',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            PaymentCard(
              imagePath:
                  'assets/images/mastercard_logo.png',
              value: 'card1',
              groupValue: selectedCard,
              onChanged: (val) {
                setState(() {
                  selectedCard = val!;
                });
              },
            ),
            SizedBox(height: 10),
            PaymentCard(
              imagePath: 'assets/images/image 13.png',
              value: 'card2',
              groupValue: selectedCard,
              onChanged: (val) {
                setState(() {
                  selectedCard = val!;
                });
              },
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: agreeTerms,
                  onChanged: (val) {
                    setState(() {
                      agreeTerms = val!;
                    });
                  },
                  fillColor:
                      WidgetStateProperty.resolveWith((
                        states,
                      ) {
                        return states.contains(
                              WidgetState.selected,
                            )
                            ? Colors.red
                            : Colors.white;
                      }),
                  checkColor: Colors.white,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Save card details for future orders',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                bottom: 20,
                left: 20,
                right: 10,
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total price:',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '\$${total.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  MyButton(
                    text: 'Pay now',
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            insetPadding:
                                EdgeInsets.symmetric(
                                  horizontal: 40,
                                ),
                            contentPadding: EdgeInsets.all(
                              20,
                            ),
                            content: SizedBox(
                              width: 250,
                              child: Column(
                                mainAxisSize:
                                    MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.red,
                                    size: 80,
                                  ),
                                  SizedBox(height: 30),
                                  Text(
                                    'Success!',
                                    textAlign:
                                        TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 34,
                                      fontWeight:
                                          FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Text(
                                    'Your payment was successful.A receipt for this purchase has been sent to your email.',
                                    textAlign:
                                        TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,

                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 40),
                                  MyButton(
                                    text: 'Go Back',
                                    onTap:
                                        () => Navigator.pop(
                                          context,
                                        ),
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryRow(
    String label,
    double value, {
    bool isBold = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight:
                  isBold
                      ? FontWeight.bold
                      : FontWeight.normal,
            ),
          ),
          Text(
            '\$${value.toStringAsFixed(2)}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_ui_kit/pages/home_page.dart';
import 'package:gap/gap.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_ios),
        title: const Text('History'),
      ),
      body: Column(
        children: [
          // Content Area
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:
                    CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/history.png'),
                  Gap(20),
                  Text(
                    'No orders yet',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      'Hit the orange button down below to Create an order',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Button at the bottom
          _button(),
        ],
      ),
    );
  }

  Widget _button() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFFA4A0C),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Text(
        'Start Ordering',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}

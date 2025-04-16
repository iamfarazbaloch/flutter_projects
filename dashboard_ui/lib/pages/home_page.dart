import 'package:dashboard_ui/widgets/grid_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(80),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, Faraz!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18.0,
                      vertical: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Good Morning!',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        Image.asset(
                          'assets/profile.png',
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                ),
              ),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: const [
                  GridContainer(
                    text: 'Videos',
                    image: 'assets/multimedia.png',
                    color: Colors.green,
                  ),
                  GridContainer(
                    text: 'Trash',
                    image: 'assets/delete.png',
                    color: Colors.redAccent,
                  ),
                  GridContainer(
                    text: 'Lock',
                    image: 'assets/shield.png',
                    color: Colors.blueAccent,
                  ),
                  GridContainer(
                    text: 'Settings',
                    image: 'assets/settings.png',
                    color: Colors.blueGrey,
                  ),
                  GridContainer(
                    text: 'Favrites',
                    image: 'assets/fav.png',
                    color: Colors.orangeAccent,
                  ),
                  GridContainer(
                    text: 'Information',
                    image: 'assets/info-button.png',
                    color: Colors.purpleAccent,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

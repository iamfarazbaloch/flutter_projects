import 'package:ecommerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // void _logout() async {
  //   await FirebaseAuth.instance.signOut();
  //   if (!mounted) return;
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(builder: (_) => const LoginPage()),
  //   );
  // }

  int currentIndex = 0;

  final List<Widget> pages = const [
    HomePage(),
    Center(child: Text('Cart')),
    Center(child: Text('Messages')),
    Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: pages[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
      ),
    );
  }
}

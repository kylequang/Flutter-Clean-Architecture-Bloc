import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../app/language.dart';
import 'categories/presentation/category_page.dart';
import 'home/presentation/pages/home_page.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List _widgetOptions = [
    HomeScreen(),
    CategoryPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        backgroundColor: Colors.black.withOpacity(0.7),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w800),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.house_rounded),
            label: Language.of(context)!.home,
            backgroundColor: Colors.black.withOpacity(0.7),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.category_rounded),
            label: Language.of(context)!.categories,
            backgroundColor: Colors.black.withOpacity(0.7),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[600],
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

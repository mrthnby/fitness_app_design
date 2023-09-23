import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [const Icon(Icons.home_filled), _showDotIndicator(0)],
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                const Icon(Icons.grid_view_outlined),
                _showDotIndicator(1)
              ],
            ),
            label: 'menu',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                const Icon(Icons.calendar_today_outlined),
                _showDotIndicator(2)
              ],
            ),
            label: 'today',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                const Icon(Icons.person_2_outlined),
                _showDotIndicator(3)
              ],
            ),
            label: 'profile',
          ),
        ],
        onTap: (selectedTabIndex) {
          setState(() {
            _currentIndex = selectedTabIndex;
          });
        },
        selectedItemColor: Colors.green.shade700,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        iconSize: 26,
      ),
      body: const Placeholder(),
    );
  }

  Widget _showDotIndicator(int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: AnimatedOpacity(
        curve: Curves.bounceIn,
        duration: const Duration(milliseconds: 200),
        opacity: index == _currentIndex ? 1 : 0,
        child: Icon(
          Icons.brightness_1,
          size: 10,
          color: Colors.green.shade700,
        ),
      ),
    );
  }
}

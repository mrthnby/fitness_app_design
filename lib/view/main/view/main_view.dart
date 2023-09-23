import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({required this.pages,super.key});
  final List<Widget> pages;
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
        items: _bottomNavigationBarItems,
        onTap: _onBottomNavBarItemTap,
        selectedItemColor: Colors.green.shade700,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        iconSize: 26,
      ),
      body: widget.pages[_currentIndex],
    );
  }

  void _onBottomNavBarItemTap(selectedTabIndex) {
    setState(() {
      _currentIndex = selectedTabIndex;
    });
  }

  List<BottomNavigationBarItem> get _bottomNavigationBarItems {
    return [
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
          children: [const Icon(Icons.person_2_outlined), _showDotIndicator(3)],
        ),
        label: 'profile',
      ),
    ];
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

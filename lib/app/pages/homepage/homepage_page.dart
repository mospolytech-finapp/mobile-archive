import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:finapp/app/pages/homepage/pages/empty/empty.dart';
import 'package:finapp/app/pages/homepage/pages/targets/targetspage_page.dart';
import 'package:finapp/app/pages/homepage/pages/transactions/transactionspage_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _screens = [
    Empty(),
    TransactionsPage(),
    Empty(),
    TargetsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Finapp"),
        ),
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.purple,
          currentIndex: _selectedIndex,
          onTap: _changeIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Экран'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Экран'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Экран'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Экран'),
          ],
        ),
      );
    });
  }
}

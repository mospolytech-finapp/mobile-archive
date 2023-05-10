import 'package:finapp/app/pages/homepage/pages/empty/empty.dart';
import 'package:finapp/app/pages/homepage/pages/targets/targetspage_page.dart';
import 'package:finapp/app/pages/homepage/pages/transactions/transactionspage_page.dart';
import 'package:flutter/material.dart';

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
    const Empty(),
    const TransactionsPage(),
    const Empty(),
    const TargetsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: const Text("FINAPP"),
        actions: [
          IconButton(
            onPressed: () {},
            color: Colors.black,
            icon: const Icon(Icons.notifications_none),
          ),
          IconButton(
            onPressed: () {},
            color: Colors.black,
            icon: const Icon(Icons.account_circle_outlined),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
              canvasColor: Colors.purple,

              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Colors.red,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: const TextStyle(color: Colors.yellow))),
          // sets the inactive color of the `BottomNavigationBar`
          child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: BottomNavigationBar(
                  selectedItemColor: Colors.white,
                  useLegacyColorScheme: false,
                  currentIndex: _selectedIndex,
                  onTap: _changeIndex,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'Главная'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.credit_card), label: 'Транзакции'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.account_tree), label: 'БДР'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.checklist), label: 'Цели'),
                  ],
                ),
              ))),
    );
  }
}

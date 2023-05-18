import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
// import 'package:finapp/app/pages/homepage/pages/empty/empty.dart';
// import 'package:finapp/app/pages/homepage/pages/targets/targetspage_page.dart';
import 'package:finapp/app/pages/homepage/pages/transactions/transactionspage_page.dart';
import 'package:finapp/app/pages/homepage/homepage_model.dart';
import 'package:provider/provider.dart';
import 'package:finapp/app/pages/homepage/widgets/confirm_exit_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;

  void _changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // final List _screens = [
  //   const Empty(),
  //   const TransactionsPage(),
  //   const Empty(),
  //   const TargetsPage(),
  // ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomePageModel(),
      child: Sizer(builder: (context, orientation, deviceType) {
        final homePageModel = Provider.of<HomePageModel>(context, listen: true);
        return Scaffold(
          extendBody: true,
          appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarTextStyle: const TextStyle(fontFamily: 'Gilroy-Light'),
            iconTheme: const IconThemeData(size: 30),
            title: const Text("FINAPP"),
            actions: [
              IconButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => ConfirmExitDialog(
                    model: homePageModel,
                  ),
                ),
                color: Colors.black,
                icon: const Icon(Icons.person_outline_rounded),
              ),
            ],
          ),
          body: TransactionsPage(),
          // bottomNavigationBar: Theme(
          //   data: ThemeData(
          //     canvasColor: const Color(0xFF801CAF),
          //     textTheme: const TextTheme(
          //       bodyLarge: TextStyle(fontFamily: 'Gilroy-Light'),
          //     ),
          //   ),
          //   child: ClipRRect(
          //     borderRadius: const BorderRadius.only(
          //       topLeft: Radius.circular(30.0),
          //       topRight: Radius.circular(30.0),
          //     ),
          //     child: BottomNavigationBar(
          //       type: BottomNavigationBarType.fixed,
          //       elevation: 0,
          //       enableFeedback: false,
          //       unselectedItemColor: const Color(0x80FFFFFF),
          //       selectedFontSize: 15,
          //       unselectedFontSize: 15,
          //       iconSize: 30,
          //       selectedItemColor: Colors.white,
          //       currentIndex: _selectedIndex,
          //       onTap: _changeIndex,
          //       items: const [
          //         BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Главная'),
          //         BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: 'Транзакции'),
          //         BottomNavigationBarItem(icon: Icon(Icons.pie_chart_outline), label: 'БДР'),
          //         BottomNavigationBarItem(icon: Icon(Icons.checklist), label: 'Цели'),
          //       ],
          //     ),
          //   ),
          // ),
        );
      }),
    );
  }
}

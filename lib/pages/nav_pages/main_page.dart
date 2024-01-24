import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mor_chhattisgarh/misc/colors.dart';
import 'package:mor_chhattisgarh/pages/nav_pages/bar_item_page.dart';
import 'package:mor_chhattisgarh/pages/home_page.dart';
import 'package:mor_chhattisgarh/pages/nav_pages/my_page.dart';
import 'package:mor_chhattisgarh/pages/nav_pages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          //to get rid of names,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 0, //line separating menu
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.apps)),
            BottomNavigationBarItem(
                label: "Bar", icon: Icon(Icons.bar_chart_sharp)),
            BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: "My", icon: Icon(Icons.person)),
          ]),
    );
  }
}

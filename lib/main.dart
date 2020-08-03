import 'package:bottomnavbar/constants.dart';
import 'package:bottomnavbar/screens/bookmark_screen.dart';
import 'package:bottomnavbar/screens/home_screen.dart';
import 'package:bottomnavbar/screens/profile_screen.dart';
import 'package:bottomnavbar/screens/search_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bottom Navbar',
      theme: ThemeData(
        backgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: primaryColor, elevation: 2),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyBottomNavBar(),
    );
  }
}

class MyBottomNavBar extends StatefulWidget {
  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int selectedItemIndex = 0;

  // calling the screen from the navbar
  // ignore: missing_return
  Widget callPage(int selectedItemIndex) {
    switch (selectedItemIndex) {
      case 0:
        return HomeScreen();
      case 1:
        return SearchScreen();
      case 2:
        return BookmarkScreen();
      case 3:
        return ProfileScreen();
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: callPage(selectedItemIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 0.0), //(x,y)
              blurRadius: 3.0,
            ),
          ],
          color: Colors.white,
        ),
        child: BottomNavigationBar(
            selectedFontSize: 12,
            unselectedFontSize: 12,
            iconSize: 25,
            selectedItemColor: primaryColor,
            backgroundColor: Colors.transparent,
            elevation: 0,
            currentIndex: selectedItemIndex,
            onTap: (int index) {
              setState(() {
                selectedItemIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(
                  "Home",
                  style: TextStyle(fontFamily: 'OpenSans'),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text(
                  "Search",
                  style: TextStyle(fontFamily: 'OpenSans'),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                title: Text(
                  "Bookmark",
                  style: TextStyle(fontFamily: 'OpenSans'),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text(
                  "Profile",
                  style: TextStyle(fontFamily: 'OpenSans'),
                ),
              ),
            ]),
      ),
    );
  }
}

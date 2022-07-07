import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'calendar.dart';
import 'home.dart';

class RoutineManagement extends StatefulWidget {
  static String routeName = "/routinedashboard";
  @override
  _RoutineManagementState createState() => _RoutineManagementState();
}

class _RoutineManagementState extends State<RoutineManagement> {
  int _selectedItemIndex = 0;
  final List pages = [
    HomePage(),
    null,
    null,
    CalendarPage(),
    null,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Color(0xFFF0F0F0),
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(color: Colors.blueGrey[600]),
            currentIndex: _selectedItemIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (int index) {
              setState(() {
                _selectedItemIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.insert_chart),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.done),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble),
              ),
            ],
          ),
          body: pages[_selectedItemIndex]
      ),
    );
  }
}

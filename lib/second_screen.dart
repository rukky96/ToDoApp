import 'package:flutter/material.dart';
import 'package:group_app/gym_screen.dart';
import 'package:group_app/home_screen.dart';
import 'package:group_app/work_screen.dart';

// ignore: must_be_immutable
class SecondPage extends StatefulWidget {
  int selectedIndex = 0;
  SecondPage({super.key, this.selectedIndex = 0});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  static const List<Widget> _bodyWidgets = [
    HomeScreen(),
    WorkScreen(),
    GymScreen()
  ];
  static const List<String> _titleText = [
    'Home Tasks',
    'Work Tasks',
    'Gym Tasks'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          _titleText[widget.selectedIndex],
          style: const TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
      ),
      body: _bodyWidgets[widget.selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.blue.shade900,
          currentIndex: widget.selectedIndex,
          onTap: (value) {
            setState(() {
              widget.selectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Work'),
            BottomNavigationBarItem(
                icon: Icon(Icons.sports_gymnastics), label: 'Gym'),
          ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tab_container/tab_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          height: 30,
          color: Colors.white,
          child: Container(
            height: 30,
            decoration: const BoxDecoration(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.elliptical(200, 200)),
              color: Colors.black,
            ),
          ),
        ),
        Container(
          height: 350,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Container(
            height: 350,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
              ),
              color: Colors.black,
            ),
            child: Container(
              height: 0,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    bottomRight: Radius.circular(80)),
                color: Colors.white,
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: TabContainer(
                    tabs: const ['Completed', 'Uncompleted', 'All Tasks'],
                    children: const [
                      Text(
                        '18',
                        style: TextStyle(
                            fontSize: 150, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        '12',
                        style: TextStyle(
                            fontSize: 150, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        '30',
                        style: TextStyle(
                            fontSize: 150, fontWeight: FontWeight.w900),
                      )
                    ],
                  )),
            ),
          ),
        ),
        Container(
          height: 300,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(),
            color: Colors.white,
          ),
          child: Container(
            padding: const EdgeInsets.only(right: 30),
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
              ),
              color: Colors.black,
            ),
          ),
        ),
      ]),
    );
  }
}

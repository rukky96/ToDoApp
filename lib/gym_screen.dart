import 'package:flutter/material.dart';
import 'package:tab_container/tab_container.dart';

class GymScreen extends StatefulWidget {
  const GymScreen({super.key});

  @override
  State<GymScreen> createState() => _GymScreenState();
}

class _GymScreenState extends State<GymScreen> {
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
                child: TabContainer(
                  tabs: const ['Completed', 'Uncompleted', 'All Tasks'],
                  children: const [
                    Text(
                      '8',
                      style:
                          TextStyle(fontSize: 150, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      '7',
                      style:
                          TextStyle(fontSize: 150, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      '15',
                      style:
                          TextStyle(fontSize: 150, fontWeight: FontWeight.w900),
                    )
                  ],
                )),
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

import 'package:flutter/material.dart';

class WorkScreen extends StatefulWidget {
  const WorkScreen({super.key});

  @override
  State<WorkScreen> createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
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
              padding: const EdgeInsets.only(right: 30),
              height: 0,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    bottomRight: Radius.circular(80)),
                color: Colors.white,
              ),
              child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    '15',
                    style:
                        TextStyle(fontSize: 150, fontWeight: FontWeight.w900),
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

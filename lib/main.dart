import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 35),
          child: Icon(
            Icons.sort,
            size: 40,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade400,
              ),
              child: Container(
                padding: const EdgeInsets.all(35),
                height: 250,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(60)),
                  color: Colors.black,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hello',
                      style: TextStyle(
                          letterSpacing: 2,
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Daniel',
                      style: TextStyle(
                          letterSpacing: 2,
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(110),
                  ),
                  color: Colors.deepPurple.shade400,
                ),
                child: Container(
                    padding: const EdgeInsets.only(right: 30),
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(110),
                          bottomRight: Radius.circular(60)),
                      color: Colors.blue.shade400,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            null;
                          },
                          child: const Text(
                            'Gym',
                            style: TextStyle(
                                letterSpacing: 2,
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        const Text(
                          '30',
                          style: TextStyle(
                              letterSpacing: 2,
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade400,
              ),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(110),
                  ),
                  color: Colors.blue.shade900,
                ),
                child: Container(
                    padding: const EdgeInsets.only(right: 30),
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(110),
                          bottomRight: Radius.circular(60)),
                      color: Colors.deepPurple.shade400,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            null;
                          },
                          child: const Text(
                            'Work',
                            style: TextStyle(
                                letterSpacing: 2,
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        const Text(
                          '15',
                          style: TextStyle(
                              letterSpacing: 2,
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
              ),
            ),
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade400,
              ),
              child: Container(
                padding: const EdgeInsets.fromLTRB(30, 50, 30, 30),
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(110),
                  ),
                  color: Colors.blue.shade900,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        null;
                      },
                      child: const Text(
                        'Home',
                        style: TextStyle(
                            letterSpacing: 2,
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Text(
                      '30',
                      style: TextStyle(
                          letterSpacing: 2,
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            null;
          },
          backgroundColor: const Color.fromARGB(255, 2, 20, 70),
          child: const Icon(
            Icons.add,
            size: 35,
          )),
    );
  }
}

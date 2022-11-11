import 'package:flutter/material.dart';
import 'package:group_app/user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TaskStatus extends StatefulWidget {
  const TaskStatus({super.key});

  @override
  State<TaskStatus> createState() => _TaskStatusState();
}

class _TaskStatusState extends State<TaskStatus> {
  Future getTasks() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));

    List tasks = [];

    if (response.statusCode == 200) {
      var jsons = jsonDecode(response.body);

      for (var element in jsons) {
        tasks.add(Task.fromJson(element));
      }
    } else {
      throw Exception("No data");
    }

    return tasks;
  }

  List<Widget> icons = const [
    Icon(
      Icons.panorama_fish_eye,
      color: Colors.white,
    ),
    Icon(
      Icons.check_circle,
      color: Colors.green,
    )
  ];
  int iconIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Task Status',
            style: TextStyle(fontSize: 30),
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
        body: Container(
            clipBehavior: Clip.none,
            child: FutureBuilder(
                future: getTasks(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var data = snapshot.data;
                    return ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          if (data[index].status.toString() == 'true') {
                            iconIndex = 1;
                          } else {
                            iconIndex = 0;
                          }
                          return ListTile(
                              leading: const Icon(
                                Icons.task,
                                color: Colors.white,
                              ),
                              title: Text(
                                data[index].title,
                                style: const TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(data[index].status.toString(),
                                  style: const TextStyle(color: Colors.white)),
                              trailing: IconButton(
                                  onPressed: () {}, icon: icons[iconIndex]));
                        });
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                })));
  }
}

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
                          return ListTile(
                              leading: const Icon(Icons.person),
                              title: Text(data[index].title),
                              subtitle: Text(data[index].status.toString()),
                              trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.panorama_fish_eye,
                                    color: Colors.redAccent,
                                  )));
                        });
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                })));
  }
}

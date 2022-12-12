import 'package:flutter/material.dart';
import 'task.dart';
import 'task_detail.dart';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: addition,
        ),
        appBar: AppBar(
          title: Text('Todo List'),
        ),
        body: ListView.builder(
          itemCount: Task.todo.length,
          prototypeItem: Card(
            child: Text(Task.todo[0].getName()),
          ),
          itemBuilder: (context, index) {
            // 7
            return GestureDetector(
              // 8
              onTap: () {
                // 9
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10

                      return TaskDetail(task: Task.todo[index]);
                    },
                  ),
                );
              },
              // 11
              child: buildRecipeCard(Task.todo[index]),
            );

            return buildRecipeCard(Task.todo[index]);
          },
        ),
      ),
    );
  }

  void addition() {
    var a = add();
    var b = add();
    var c = add();
    Task.todo.add(Task(a!, b!, c!));
  }

  String? add() {
    String? value = stdin.readLineSync();
  }

  Widget buildRecipeCard(Task task) {
    // 1
    return Card(
      // 2
      child: Column(
        // 3
        children: <Widget>[
          // 4
          Text(task.getName()),
          // 5
        ],
      ),
    );
  }
}

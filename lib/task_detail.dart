import 'package:flutter/material.dart';
import 'task.dart';

class TaskDetail extends StatefulWidget {
  final Task task;

  const TaskDetail({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  TaskDetailState createState() {
    return TaskDetailState();
  }
}

class TaskDetailState extends State<TaskDetail> {
  // TODO: Add _sliderVal here

  bool delete = false;
  void deletion() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      delete = true;
      int count = 0;
      while (count == 0) {
        if (delete == true) {
          Task.todo.remove(widget.task);
          count++;
          setState(() {});
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: 'Delete',
        onPressed: deletion,
      ),
      appBar: AppBar(
        title: Text(widget.task.getName()),
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          children: <Widget>[
            // 4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Text(
                widget.task.getName(),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Text(
              (widget.task.getDetails() +
                  ' ' +
                  'due' +
                  ' ' +
                  widget.task.getDeadline()),
              style: const TextStyle(fontSize: 18),
            ),
            // TODO: Add Expanded

            // TODO: Add Slider() here
          ],
        ),
      ),
    );
  }
}

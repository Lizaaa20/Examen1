import 'package:flutter/material.dart';
import 'task.dart';

class TareasScreen extends StatefulWidget {
  @override
  _TareasScreenState createState() => _TareasScreenState();
}

class _TareasScreenState extends State<TareasScreen> {
  final List<Task> taskList = [
    Task(title: 'Tarea 1'),
    Task(title: 'Tarea 2'),
    Task(title: 'Tarea 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tareas'),
      ),
      body: ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          final task = taskList[index];
          return Card(
            child: ListTile(
              title: Text(
                task.title,
                style: TextStyle(
                  decoration: task.isCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
              trailing: Checkbox(
                value: task.isCompleted,
                onChanged: (bool? value) {
                  setState(() {
                    task.isCompleted = value ?? false;
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}


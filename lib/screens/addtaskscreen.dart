import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/provider/taskprovider.dart';
class AddTaskScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: 'New Task',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              final taskName = controller.text;
              if (taskName.isNotEmpty) {
                Provider.of<TaskProvider>(context, listen: false).addTask(taskName);
                Navigator.pop(context);
              }
            },
            child: Text('Add Task'),
          ),
        ],
      ),
    );
  }
}

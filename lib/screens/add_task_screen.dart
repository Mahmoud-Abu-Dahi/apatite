import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack;
  AddTaskScreen(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.stretch, //ضفتها عشان امدد الزر  بعرض الشاشة
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                color: Colors.indigo[400],
                fontWeight: FontWeight.bold),
          ),
          TextField(
            autofocus: true, //عشان تفوكس على الكست فيلد
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              // هناهيتم اخذ تمرير قيمةالعنوان وارجاعها الى صفحة التاسك سكرين لداخل الكول باك
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle!);
              Navigator.pop(context);
            },
            child: Text('Add'),
            style: TextButton.styleFrom(
                backgroundColor: Colors.teal[400], primary: Colors.white),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todaydo_app/screens/add_task_screen.dart';

//import '../models/task.dart'; بطل له لزوم
import '../models/task_data.dart';
import '../widget/tasks_list.dart';
import 'package:provider/provider.dart';
//عشان البكج بروفايدر حولنا من ستيتفول الى ستيتلس

class TasksCcreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //bottomsheet widget
          showModalBottomSheet(
              //context: context, builder: (context) => AddTaskScreen());

              //هاد الخطوات عشان نعالج حجم الشاشة
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen((newTaskTitle) {
                        // print(newTaskTitle);
                        // setState(() {
                        //   //.add / method is typically used with collections like lists (List) to add an element to the end of the list.
                        //   //.add(Task(name: newTaskTitle)): This line adds the newly created 'Task' object to the 'tasks' list.
                        //   tasks.add(Task(name: newTaskTitle));
                        //   Navigator.pop(
                        //       context); //عشان لما اضغط علي الاضافة يرجعني للصفحة الاساسية
                        // }
                        // );
                      }))));
        },
        backgroundColor: Colors.indigo[400],
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.teal[400],
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'ToDayDo',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Text(
              '${Provider.of<TaskData>(context).tasks.length} tasks',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TasksList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

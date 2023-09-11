import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task.dart';
import 'package:todaydo_app/widget/task_list.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

//حولناها لسيتفول ويدجت عشان نقدر نغير و نحدث حالة الويدجت
class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            //itemCount / عشان احدد اكم من مهمة هعرض على الشاشة
            itemCount: taskData.tasks.length,
            itemBuilder: (context, index) {
              return TaskTile(
                isChecked: taskData.tasks[index].isDone,
                taskTital: taskData.tasks[index].name,
                chehkboxChange: (newValue) {
                  taskData.updateTask(taskData.tasks[index]);
                },
                listTileDelete: () {
                  taskData.deleteTask(taskData.tasks[index]);
                },
              );
            });
      },
    );

    //explian chekboxChange
//  checkboxChange: This is a callback function that is associated with some UI element, such as a Checkbox. It gets called when the state of the checkbox changes, indicating whether it's checked or unchecked.

// (newValue) { ... }: This is an anonymous function (a lambda function) that takes one argument, newValue, which is the new value of the checkbox. This argument is typically a boolean value, representing whether the checkbox is checked (true) or unchecked (false).
  }
}

//ListView.builder() / هستخدمها لعرض كل مهمة جديدة واضافاتها من خلال التطبيق


/*
 here's a clear and simplified explanation of the "Consumer" widget in Flutter:

1. **Provider Concept**:

   - In Flutter app development, you often need to share data and manage the app's state between different components and screens.

   - The "Provider" library helps accomplish this in a convenient and efficient way.

2. **Consumer**:

   - A "Consumer" is a Flutter widget used to subscribe to changes in data provided by a "Provider."

   - When you use "Consumer," you specify a portion of the user interface (UI) that should rebuild itself when the data changes.

3. **Using Consumer**:

   - "Consumer" is typically placed in a specific part of the UI where you want certain updates to occur when the data changes.

   - Inside "Consumer," there's a `builder` function that you can use to rebuild the UI based on the changing data.

4. **Advantages of Using It**:

   - "Consumer" improves the efficiency of UI rebuilding, as it only rebuilds a small portion of the screen rather than the entire screen when data changes.

   - This helps enhance app performance and reduce memory consumption.


*/
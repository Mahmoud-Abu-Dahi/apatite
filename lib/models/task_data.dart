import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'go Shopping'),
    Task(name: 'Go Gym'),
    Task(name: 'Go to sea'),
  ];

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners(); //تحديث للويدجت يلي عم يستمعو للتغيير يلي بصير في الميثود
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}


//notifyListeners() / عشان تقوم باخبار وتحديث  كل الويدجت يلي عم يستمعو عالتغيير يلي بصير على التاسك اوبجكت
import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task_data.dart';
import 'package:todaydo_app/screens/tasksscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksCcreen(),
      ),
    );
  }
}


//ChangeNotifierProvider /كلاس هيوفر ال تاسك داتا اوبجكت لكامل شجرة المكونات تبعتنا
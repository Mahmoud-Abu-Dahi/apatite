import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTital;
  final void Function(bool?) chehkboxChange;
  final void Function() listTileDelete;
  TaskTile(
      {required this.isChecked,
      required this.taskTital,
      required this.chehkboxChange,
      required this.listTileDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTital,
        style: isChecked
            ? TextStyle(decoration: TextDecoration.lineThrough)
            : null,
      ),
      trailing: Checkbox(
          value: isChecked,
          //newValue /القيمة الجديدة تعت التشيك بوكس
          onChanged: chehkboxChange),
      onLongPress: listTileDelete,
    );
  }
}


//onLongPress / هاد البروبرتي هتشغل كول باك لما المستخدم راح يضغط على التاسك تايل ويبقى ضاغط كم من ثانية











 // {صار ما في داعي لاسنخدامهاكستيت ليس لانه حولنا ملف التاسك ليست الى ستيت فول ويدجت}
// import 'package:flutter/material.dart';
// class TaskTile extends StatefulWidget {
//   @override
//   State<TaskTile> createState() => _TaskTileState();
// }

// class _TaskTileState extends State<TaskTile> {
//   bool isChecked = false; //paste
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         'go shipping',
//         style: isChecked
//             ? TextStyle(decoration: TextDecoration.lineThrough)
//             : null,
//       ),
//       trailing: TaskCheckbox(isChecked, (bool? newValue) {
//         setState(() {
//           isChecked = newValue!;
//         });
//       }),
//     );
//   }
// }

// //عبارةعن extract من TaskCheckbox اللي فوق

// class TaskCheckbox extends StatelessWidget {
//   //bool? isChecked = false; cut
//   final bool? checkBoxState;
//   final Function(bool?) checkboxChange;
//   TaskCheckbox(this.checkBoxState, this.checkboxChange);

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//         value: checkBoxState,
//         //newValue /القيمة الجديدة تعت التشيك بوكس
//         onChanged: checkboxChange);
//   }
// }

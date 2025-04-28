import 'package:flutter/material.dart';
import 'package:to_do_app/style/app_color.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 8, top: 8),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.taskCardColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: ListTile(
          leading: Checkbox(value: false, onChanged: (newValue) {}),

          title: Text('data'),
          subtitle: Text('28 / 4 / 2025'),
          trailing: IconButton(
            onPressed: () {},
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Icon(Icons.delete_outlined, color: Colors.red, size: 20),
            ),
          ),
        ),
      ),
    );
  }
}

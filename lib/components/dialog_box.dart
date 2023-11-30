import 'package:flutter/material.dart';
import 'package:to_do_app/components/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // text field
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a new task"),
            ),

            // button to save & cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                MyButton(
                  title: "Save",
                  onPressed: onSave,
                ),

                const SizedBox(width: 10),

                // cancel button
                MyButton(
                  title: "Cancel",
                  onPressed: onCancel,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

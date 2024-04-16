import 'package:flutter/material.dart';
import 'package:to_do/UI/Utils/app_color.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Add new Task"),
          TextField(
            decoration: InputDecoration(
              labelText: "Enter Task"
            ),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Enter Description"
            ),
          ),
          Text("Select Date"),
          Text("16/4/2024"),
          ElevatedButton(onPressed: (){}, child: Text("Add")),

        ],
      ),
    );
  }
}

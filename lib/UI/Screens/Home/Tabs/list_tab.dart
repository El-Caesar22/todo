import 'package:flutter/material.dart';
import 'package:to_do/UI/Widgets/toDo_widget.dart';

class ListTab extends StatelessWidget{
  const ListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:  100,
        itemBuilder: (context , index ){
        return ToDoWidget();
    });
  }
}

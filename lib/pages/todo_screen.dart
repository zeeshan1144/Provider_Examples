import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Todo_Screen extends StatefulWidget {
  String title;
  bool isDone;
   Todo_Screen({super.key,required this.title,required this.isDone});

  @override
  State<Todo_Screen> createState() => _Todo_ScreenState();
}

class _Todo_ScreenState extends State<Todo_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
      ),
    );
  }
}

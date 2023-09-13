import 'package:flutter/material.dart';
import 'package:provider_example/pages/todo_screen.dart';

class Todo_Provider extends ChangeNotifier {
  List<Todo_Screen> _todos = [];
  List get todos => _todos;

  //add function
  void addTodo(String titles) {
    _todos.add(Todo_Screen(title: titles, isDone: false));
    notifyListeners();
  }

  //toggle funcation
  void toggleTodoStatus(int index) {
    _todos[index].isDone = !_todos[index].isDone;
    notifyListeners();
  }

//remove funcation
  void removeTodo(int index) {
    _todos.removeAt(index);
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/Provider/countProvider.dart';
import 'package:provider_example/Provider/exampleOne_provider.dart';
import 'package:provider_example/Provider/shoppingcartProvider.dart';
import 'package:provider_example/Provider/todo_provider.dart';
import 'package:provider_example/pages/count_example.dart';
import 'package:provider_example/pages/example_one.dart';
import 'package:provider_example/pages/shoping_cart.dart';
import 'package:provider_example/practice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Countprovider()),
        ChangeNotifierProvider(create: (_) => Example_one_Provider()),
        ChangeNotifierProvider(create: (_) => Todo_Provider()),
        ChangeNotifierProvider(create: (_) => ShoppingCartProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Shopping_cart_Screen(),
      ),
    );
  }
}

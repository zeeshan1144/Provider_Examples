import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class boolTrain extends StatefulWidget {
  const boolTrain({super.key});

  @override
  State<boolTrain> createState() => _boolTrainState();
}

class _boolTrainState extends State<boolTrain> {
  bool isFavourite = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    isFavourite = !isFavourite;
                  });
                },
                icon: Icon(isFavourite ? Icons.favorite : Icons.abc))
          ],
        ),
      )),
    );
  }
}

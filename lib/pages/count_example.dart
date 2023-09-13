import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/Provider/countProvider.dart';

class Count_Example extends StatefulWidget {
  const Count_Example({super.key});

  @override
  State<Count_Example> createState() => _Count_ExampleState();
}

class _Count_ExampleState extends State<Count_Example> {
  @override
  Widget build(BuildContext context) {
    final countprovider = Provider.of<Countprovider>(context, listen: false);
    print("buid");
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            countprovider.setCounts();
          },
          child: Icon(Icons.add),
        ),
        body: Center(
          child: Consumer<Countprovider>(builder: (context, imran, child) {
            return Text(imran.counts.toString());
          }),
        ));
  }
}

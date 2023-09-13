import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/Provider/exampleOne_provider.dart';

class ExampleOne_Screen extends StatefulWidget {
  const ExampleOne_Screen({super.key});

  @override
  State<ExampleOne_Screen> createState() => _ExampleOne_ScreenState();
}

class _ExampleOne_ScreenState extends State<ExampleOne_Screen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Example_one_Provider>(context, listen: false);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<Example_one_Provider>(
            builder: (context, values, child) {
              return Slider(
                  min: 0,
                  max: 1,
                  value: values.sliderValue,
                  onChanged: (newValue) {
                    values.setValue(newValue);
                  });
            },
          ),
          Consumer<Example_one_Provider>(
            builder: (context, value, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(value.sliderValue)),
                      child: Center(child: Text("Container 1")),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(value.sliderValue)),
                      child: Center(child: Text("Container 2")),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/Providers/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  // Define countProvider at the class level
  late CountProvider countProvider;

  @override
  void initState() {
    super.initState();

    // Initialize countProvider in the initState method
    countProvider = Provider.of<CountProvider>(context, listen: false);

    // Use Timer.periodic to update countProvider every second
    Timer.periodic(Duration(seconds: 1), (timer) {
      countProvider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build widgets');

    return Scaffold(
      appBar: AppBar(
        title: Text("Subscribe"),
      ),
      body: Center(
        child: Consumer<CountProvider>(
          builder: (context, value, child) {
            print("Only this widget");
            return Text(value.count.toString(), style: TextStyle(fontSize: 30),);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Use the countProvider from the class level
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

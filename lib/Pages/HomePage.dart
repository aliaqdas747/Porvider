import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(


              label: Text("Enter Your Age ?")
            ),),
          ),
        ),
      ),

    );
  }
}

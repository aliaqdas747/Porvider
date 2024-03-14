import 'dart:async';

import 'package:flutter/material.dart';

class WhyProviderScreen extends StatefulWidget {
  const WhyProviderScreen({super.key});

  @override
  State<WhyProviderScreen> createState() => _WhyProviderScreenState();
}

class _WhyProviderScreenState extends State<WhyProviderScreen> {
  int count = 0;
void initState(){
  super.initState();
  Timer.periodic(Duration(seconds: 1),(timer){
    count++;
    print(count++);
    setState(() {

    });
  });
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Provider tutorial'),
      ),
      body:Container(
        child: Center(child: Column(
          children: [
            Text(count.toString(),style: TextStyle(fontSize: 30),),
            Text(DateTime.now().hour.toString()+":"+DateTime.now().minute.toString()+":"+DateTime.now().second.toString(),style: TextStyle(fontSize: 30),)

          ],
        ),),
      ) ,
    );
  }
}

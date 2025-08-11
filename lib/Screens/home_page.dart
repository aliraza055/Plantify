import 'package:flutter/material.dart';
import 'package:pantify/Provider/counter_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final countP=Provider.of<CounterProvider>(context);
    return Scaffold(      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Center(child: Text(countP.count.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),))
      ],),
    );
  }
}
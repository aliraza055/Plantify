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
    print('built all widgets');
    final countP=Provider.of<CounterProvider>(context,listen: false);
    return Scaffold(      
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
        countP.setCount();
      }),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<CounterProvider>(
            builder: (context,value,child){
              print("only this widget");
              return Center(child: Text(value.count.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),));

            })
      ],),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:pantify/Provider/item_provider.dart';
import 'package:provider/provider.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<ItemProvider>(context);
    return  Scaffold(
      appBar: AppBar(

      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, indx){
        return ListTile(
          onTap: (){
            provider.setList(indx);
          },
          title: Text('item$indx'),
          trailing:provider.selectedList.contains(indx) ? Icon(Icons.favorite,color: Colors.red,) :Icon(Icons.favorite_outline_sharp),
        );
      })
    );
  }
}
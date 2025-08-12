import 'package:flutter/material.dart';
import 'package:pantify/Provider/item_provider.dart';
import 'package:provider/provider.dart';

class FavList extends StatefulWidget {
   FavList({super.key,});

  @override
  State<FavList> createState() => _FavListState();
}

class _FavListState extends State<FavList> {
   @override
  Widget build(BuildContext context) {
    final provider=Provider.of<ItemProvider>(context);
    print('all buits');
    return  Scaffold(
      appBar: AppBar(

      ),
      body: ListView.builder(
        itemCount:provider.selectedList.length,
        itemBuilder: (context, indx){
          final itemIndex=provider.selectedList[indx];
        return ListTile(
          onTap: (){
              provider.removeList(itemIndex);
          },
          
          title: Text('item$itemIndex'),
          trailing:provider.selectedList.contains(itemIndex) ? Icon(Icons.favorite,color: Colors.red,) :Icon(Icons.favorite_outline_sharp),
        );
      })
    );
  }
}
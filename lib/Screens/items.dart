import 'package:flutter/material.dart';
import 'package:pantify/Provider/item_provider.dart';
import 'package:pantify/Screens/fav_list.dart';
import 'package:provider/provider.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    print('all buits');
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        actions: [
          GestureDetector(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>FavList())),
            child: Icon(Icons.logout))
        ],
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, indx){
        return Consumer<ItemProvider>(builder: (context,value,child){
          return  ListTile(
            onTap: (){
              print("only this widget");
              if(value.selectedList.contains(indx)){
                value.removeList(indx);
              }else{
              value.addList(indx);
              }
            },
            
            title: Text('item$indx'),
            trailing:value.selectedList.contains(indx) ? Icon(Icons.favorite,color: Colors.red,) :Icon(Icons.favorite_outline_sharp),
          );
        }
          
        );
      })
    );
  }
}
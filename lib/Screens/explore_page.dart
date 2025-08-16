import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});
  @override
  State<ExplorePage> createState() => _ExplorePageState();
}
class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
  final _height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children:[
              Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)    
                )     
              ),   
              height: _height/3,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("ali raza",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
                          ),
          Container(
            margin: EdgeInsets.only(top: 220,left: 20,right: 20),
            height: 50,
            decoration: BoxDecoration(
             color: Colors.white,
             
              borderRadius: BorderRadius.circular(20)
            ),
            child: TextField(   
              decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 15), 
                border: InputBorder.none,
              hint: Text('enter your name')
              ),
            ))
        ])
        ],
      ),
    );
  }
}
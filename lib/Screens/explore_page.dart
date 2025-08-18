import 'package:flutter/material.dart';
import 'package:pantify/Models/types.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});
  @override
  State<ExplorePage> createState() => _ExplorePageState();
}
class _ExplorePageState extends State<ExplorePage> {
  List<Types> list=[];
@override
  void initState() {
    super.initState();
    list=Types.itmes();
      }
  @override
  Widget build(BuildContext context) {
  final _height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  padding: const EdgeInsets.only(left: 20,top: 40,right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('images/icon_4.png',height: 50,width: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text('Hi ,Ali Raza!',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                            Image.asset('images/icon_4.png',height: 50,width: 50,),
                
                        ],
                      )
                    ],
                  ),
                ),
                            ),
            Container(
              margin: EdgeInsets.only(top: _height*0.27,left: 20,right: 20),
              height: 50,
              decoration: BoxDecoration(
               color: Colors.white,
               
                borderRadius: BorderRadius.circular(20)
              ),
              child: TextField(   
                decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 15), 
                  border: InputBorder.none,
                hint: Text('enter your name'),
                 
                ),
              ))
          ]),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text('Recommended',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 14,vertical: 5),
                            decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20)
                              
                            ),
                            child: Text('See all'),
                          )
            
            
                          ],
            ),
          ),
          SizedBox(height: 20,),
           SizedBox(
            height: 250,
             child: ListView.builder(
                itemCount: list.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  color: Colors.white,
                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(list[index].image),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(list[index].name),
                     //     Spacer(),
                           SizedBox(width: 80,),
                          Text('Rs:${list[index].price}')
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(list[index].des)
                    ],
                  ),
                ),
              );
                }),
           ),
          
          
          ],
        ),
      ),
    );
  }
}
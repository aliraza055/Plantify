import 'package:flutter/material.dart';
import 'package:pantify/Provider/slider_provider.dart';
import 'package:provider/provider.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    print("bluid all widgets");
    final res=Provider.of<SliderProvider>(context,listen: false);
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Slider Example",style: TextStyle(color: Colors.white),),
        centerTitle:true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Slider(
            min: 0,
            max: 1,
            value: res.opac,
             onChanged: (val){
              res.setOpacity(val);
          }),
          Consumer<SliderProvider>(builder: (context,value,child){
            print("build only  this widget");
            return   Container(height: 100,
         width:  double.infinity,
         decoration: BoxDecoration(
          color: Colors.blue.withOpacity(value.opac)
         ),
         );

          })
        

        ],
      ),
    );
  }
}
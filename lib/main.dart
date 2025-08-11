import 'package:flutter/material.dart';
import 'package:pantify/Provider/slider_provider.dart';
import 'package:pantify/Screens/slider_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key}); 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=>SliderProvider(),
      child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SliderPage(),
    ),
      );
    
  }
}


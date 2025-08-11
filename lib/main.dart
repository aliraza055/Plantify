import 'package:flutter/material.dart';
import 'package:pantify/Provider/counter_provider.dart';
import 'package:pantify/Provider/loader_provider.dart';
import 'package:pantify/Provider/slider_provider.dart';
import 'package:pantify/Screens/login_page.dart';
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
    return MultiProvider(
      providers:[
       ChangeNotifierProvider(create: (_)=>SliderProvider()),
       ChangeNotifierProvider(create: (_)=>CounterProvider()),
              ChangeNotifierProvider(create: (_)=>LoaderProvider()),


      ],
      child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const LoginPage(),
    ),
      );
    
  }
}


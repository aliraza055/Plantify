import 'package:flutter/material.dart';
import 'package:pantify/Provider/loader_provider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    print('all built');
    final provider=Provider.of<LoaderProvider>(context,listen: false );
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(),
          TextFormField(),
          TextFormField(),
          TextFormField(),
          SizedBox(height: 30,),
          Consumer<LoaderProvider>(builder: (context,value,child){
     return ElevatedButton(
            child:value.loading ? Center(child: CircularProgressIndicator(),) : Center(child: Text("Log In")) ,
            onPressed: (){
            provider.setLoading(false);
          },
          
          );
          })
          

        ],
      ),
    );
  }
}
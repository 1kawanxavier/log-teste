import 'package:flutter/material.dart';

class splashPage extends StatefulWidget {
  const splashPage({super.key});

  @override
  State<splashPage> createState() => _splashPageState();
}

class _splashPageState extends State<splashPage> {
  

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), (){Navigator.pushReplacementNamed(context, '/login');});
    return MaterialApp(
      
      home: Scaffold(
          
          body: Container(child: Image.asset('assets/logo.png'), alignment: Alignment.center,),

          backgroundColor: Color(0xff302B40)

        ),
    );
  }
}
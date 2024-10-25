import 'package:flutter/material.dart';
import 'package:log/criarconta.dart';
import 'package:log/entregas.dart';
import 'package:log/integracao.dart';
import 'package:log/loginPage.dart';
import 'package:log/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/':(context) => splashPage(),
        '/login':(context) => loginPage(),
        '/criarconta':(context)=> criarContaPage(),
        '/integracao':(context) => integracaoPage(),
        '/entregas': (context)=> entregasPage(),
      },
      initialRoute: '/',

    );
  }
}


import 'package:flutter/material.dart';

class criarContaPage extends StatefulWidget {
  const criarContaPage({super.key});

  @override
  State<criarContaPage> createState() => _criarContaPageState();
}

class _criarContaPageState extends State<criarContaPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: Scaffold(
        backgroundColor: Color(0xff24364D),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Container(child: Image.asset('assets/logo.png'),),
              SizedBox(height: 20,),
              Text('Criar conta', style: TextStyle(color: Colors.white, fontSize: 24)),
              SizedBox(height: 20,),
              TextFormField(decoration: InputDecoration(labelText: 'NOME', icon: Icon(Icons.people), labelStyle: TextStyle(color: Colors.white, decorationColor: Colors.white))),
              SizedBox(height: 20,),
              TextFormField(decoration: InputDecoration(labelText: 'E-MAIL', icon: Icon(Icons.email), labelStyle: TextStyle(color: Colors.white, decorationColor: Colors.white))),
              SizedBox(height: 10,),
              TextFormField(decoration: InputDecoration(labelText: 'SENHA', icon: Icon(Icons.password), labelStyle: TextStyle(color: Colors.white, decorationColor: Colors.white))),
              
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){}, child: Text('Criar nova conta'))
          ],
        )
      ),
    );
  }
}
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
  
}

class _loginPageState extends State<loginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: Scaffold(
        backgroundColor: Color(0xff24364D),
        
        body: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.fromLTRB(30, 110, 30, 50),
          children: [
              Container(child: Image.asset('assets/logo.png'),),
              SizedBox(height: 20,),
              Text('Entrar na conta', style: TextStyle(color: Colors.white, fontSize: 24)),
              SizedBox(height: 20,),
              TextFormField(decoration: InputDecoration(labelText: 'E-MAIL', icon: Icon(Icons.email), labelStyle: TextStyle(color: Colors.white, decorationColor: Colors.white),), controller: _emailController, ),
              SizedBox(height: 10,),
              TextFormField(decoration: InputDecoration(labelText: 'SENHA', icon: Icon(Icons.password), labelStyle: TextStyle(color: Colors.white, decorationColor: Colors.white)), controller: _senhaController,),
              
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){print(_emailController.text); Navigator.pushReplacementNamed(context, '/integracao');}, child: Text('ENTRAR')),
              SizedBox(height: 70,),
              ElevatedButton(onPressed: (){Navigator.pushReplacementNamed(context, '/criarconta');}, child: Text('Criar nova conta'))
          ],
        )
      ),
    );
  }
}
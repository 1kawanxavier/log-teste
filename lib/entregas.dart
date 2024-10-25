import 'package:flutter/material.dart';

class entregasPage extends StatefulWidget {
  const entregasPage({super.key});

  
  @override
  State<entregasPage> createState() => _entregasPageState();
}

class _entregasPageState extends State<entregasPage> {

  String dropdownvalor = 'Filtro entregas';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff302B40),
        appBar: AppBar(title: Text('Entregas', style: TextStyle(color: Colors.white), ), backgroundColor: Color(0xff24364D), centerTitle: true),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            
            SizedBox(height: 20,),
            Center(child: Text('Pacotes Entregues',  style: TextStyle(color: Colors.white, fontSize: 15),)),
            Container(padding: EdgeInsetsDirectional.all(30) ,child: LinearProgressIndicator(backgroundColor: Color(0xff24364D), value: 0.6, minHeight: 30),),
            DropdownButton<String>(
              value: dropdownvalor,
              onChanged: (String? novoValor){
                setState(() {
                  dropdownvalor = novoValor!;
                });
              },
              items: const[
                DropdownMenuItem(child: Text('Filtro entregas'), value: 'Filtro entregas',),
                DropdownMenuItem(child: Text('Data'), value: 'Data',),
                DropdownMenuItem(child: Text('Status'), value: 'Status',),
                DropdownMenuItem(child: Text('Distancia'), value:  'Distancia',),
                DropdownMenuItem(child: Text('Prioridade'), value: 'Prioridade',),


              ],
            )
          ]
        ,)
        
      ),
    );
  }
}
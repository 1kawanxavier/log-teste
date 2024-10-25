import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class integracaoPage extends StatefulWidget {
  const integracaoPage({super.key});

  @override
  State<integracaoPage> createState() => _integracaoPageState();
}

class _integracaoPageState extends State<integracaoPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.asset('assets/bee.mp4')..initialize().then((_){
      setState(() {
        
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: const Color.fromARGB(255, 2, 31, 54), title: Text('Tutorial do aplicativo', style: TextStyle(color: Colors.white),)),
        backgroundColor: Color(0xff302B40),
        body: Center(child: Column(children: [
          Container(child: VideoPlayer(_controller), height: 150,),
          SizedBox(height: 50,),
          SizedBox(child: ElevatedButton(onPressed: (){Navigator.pushReplacementNamed(context, '/entregas');}, child: Text('Pular', style: TextStyle(color: Colors.white, fontSize: 25)), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xffAD7E0F),), ),), width: 250,)
        ], mainAxisAlignment: MainAxisAlignment.center,
        ),),



        floatingActionButton: FloatingActionButton(onPressed: (){
          _controller.play();
        },  child: Icon(Icons.play_arrow),),
         
      ),
    );
  }
}
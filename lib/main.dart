import 'package:flutter/material.dart';
 import 'package:audioplayers/audio_cache.dart';

void main()=> runApp(MyApp());
class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('lw'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 200,
            height: 100,
            child: Card(
              color: Colors.red,
              child: Image.asset('image/keshavphoto.jpg'),
              elevation: 5,
            ),
          ),
            Container(
              width: 100,
              height: 50,
                child: RaisedButton(
                  onPressed: (){
                    print('hi');
                    var audio = AudioCache();
                    audio.play('sapna_choudhary.mp3');
                  },
                  child: Card(
                      color: Colors.green,
                      child: Text('second'),
                      elevation: 5,
                    ),
                ),
          ),
        ],
      ),
    ),
    );
    }
  }
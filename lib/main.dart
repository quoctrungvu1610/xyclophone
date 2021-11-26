import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(xyclophone());
}
class xyclophone extends StatelessWidget {
  const xyclophone({Key? key}) : super(key: key);

  void playAudio(int soundNumber){
    final player = AudioCache();
    player.play('note${soundNumber}.wav');
  }
  Container Note({soundNumber, Color? color, String text = '' }){
    return
    Container(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        child: Text(text,style:
        TextStyle(
          color: Colors.white,
        ),
        ),
        onPressed: (){
          playAudio(soundNumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black38,
            title: Text('Xyclophone',style: TextStyle(
                color: Colors.white,
            ),
            ),
          ),
          body: Center(
            child: Container(
              width: 300.0,
              height: 500.0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Xyclophone', style: TextStyle(
                        fontSize: 50.0,
                        fontFamily: 'Pacifico',
                      ),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.music_note, color: Colors.teal,),
                      Text('PLAY YOUR SONGS',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4.0,
                        fontFamily: 'Source-Sans-Pro',
                      ),
                      ),
                      SizedBox(height: 50.0,)
                    ],

                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Note(soundNumber: 1, color: Colors.redAccent, text: 'Do'),
                        Note(soundNumber: 2, color: Colors.orangeAccent, text: 'Re'),
                        Note(soundNumber: 3, color: Colors.yellowAccent, text: 'Mi'),
                        Note(soundNumber: 4, color: Colors.greenAccent, text: 'Fa'),
                        Note(soundNumber: 5, color: Colors.tealAccent, text: 'Sol'),
                        Note(soundNumber: 6, color: Colors.blueAccent, text: 'La'),
                        Note(soundNumber: 7, color: Colors.purpleAccent, text: 'Si'),
                      ]
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}

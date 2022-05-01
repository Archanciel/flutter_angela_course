import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final AudioCache audioPlayer = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  child: Text(''),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape:
                        BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                  ),
                  onPressed: () {
                    audioPlayer.play('note1.wav');
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Text(''),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape:
                        BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                  ),
                  onPressed: () {
                    audioPlayer.play('note2.wav');
                  },
                ),
              ),
              createTextButton(wavFileNb: 3, color: Colors.yellow),
              createTextButton(wavFileNb: 4, color: Colors.green),
              createTextButton(wavFileNb: 5, color: Colors.teal),
              createTextButton(wavFileNb: 6, color: Colors.blue),
              createTextButton(wavFileNb: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  Expanded createTextButton({
    required int wavFileNb,
    required MaterialColor color,
  }) {
    return Expanded(
      child: TextButton(
        child: Text(''),
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        onPressed: () {
          audioPlayer.play('note$wavFileNb.wav');
        },
      ),
    );
  }
}

import 'dart:math';
import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:ego_asistan/screens/Welcome/welcome_screen.dart';
import 'package:ego_asistan/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:speech_to_text/speech_to_text.dart';

class DisabledScreen extends StatefulWidget {
  const DisabledScreen({Key? key}) : super(key: key);

  @override
  State<DisabledScreen> createState() => _DisabledScreenState();
}

class _DisabledScreenState extends State<DisabledScreen> {
  List<String> assets = [
    'lib/assets/sounds/1-dk.mp3',
    'lib/assets/sounds/3-dk.mp3',
    'lib/assets/sounds/5-dk.mp3',
    'lib/assets/sounds/10-dk.mp3',
    'lib/assets/sounds/15-dk.mp3',
  ];

  String getRandomAsset() {
    int random = Random().nextInt(assets.length);
    return assets[random];
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      playsound();
      _speech = SpeechToText();
      askPermission();
    });
  }

  void askPermission() {
    Permission.microphone.request();
  }

  @override
  void dispose() {
    myAudioPlayer.pause();
    super.dispose();
  }

  late SpeechToText _speech;
  bool _isListening = false;
  String _text = '';
  double _confidence = 1.0;

  Future<void> playsound() async {
    String audioasset = "lib/assets/sounds/gitmek-istediginiz.mp3";
    ByteData bytes = await rootBundle.load(audioasset);
    Uint8List soundbytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
    await myAudioPlayer.play(BytesSource(soundbytes));
    await Future.delayed(Duration(seconds: 2));
    print('listena düştü');
    _listen();

    await Future.delayed(Duration(seconds: 5));
    if (_text.isNotEmpty) {
      _isListening = false;
      _speech.stop();
      String audioasset2 = getRandomAsset();
      ByteData bytes2 = await rootBundle.load(audioasset2);
      Uint8List soundbytes2 = bytes2.buffer.asUint8List(bytes2.offsetInBytes, bytes2.lengthInBytes);
      await myAudioPlayer.play(BytesSource(soundbytes2));
      await Future.delayed(Duration(seconds: 5));
      print('listen start');
      _listen();
      print('listen end');
      await Future.delayed(Duration(seconds: 4));
      print(_text);
      if (_text.toLowerCase().contains('evet')) {
        String audioasset3 = "lib/assets/sounds/yolculuk-talebiniz.mp3";
        ByteData bytes3 = await rootBundle.load(audioasset3);
        Uint8List soundbytes3 = bytes3.buffer.asUint8List(bytes3.offsetInBytes, bytes3.lengthInBytes);
        myAudioPlayer.play(BytesSource(soundbytes3));
      }
    }
    //  else {
    //   Future.delayed(Duration(seconds: 5), () {
    //     playsound();
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _listen,
      //   child: Icon(_isListening ? Icons.mic : Icons.mic_none),
      // ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(20)),
                  child: Center(child: Text('Konuş')),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(20)),
                  child: Center(child: Text('Dinle')),
                ),
              ],
            ),
            // Text(_text, style: const TextStyle(fontSize: 20, color: Colors.white)),
          ],
        ),
      ),
    );
  }

  void _listen() async {
    if (!_isListening) {
      bool hasPermission = await _speech.hasPermission;
      print('hasPermission : $hasPermission');
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      print('available: $available');
      if (available) {
        setState(() => _isListening = true);
        _speech.listen(
          localeId: 'tr-TR',
          onResult: (val) => setState(() {
            _text = val.recognizedWords;
            if (val.hasConfidenceRating && val.confidence > 0) {
              _confidence = val.confidence;
            }
          }),
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }
}

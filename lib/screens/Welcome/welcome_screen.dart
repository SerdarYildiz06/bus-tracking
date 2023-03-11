import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:ego_asistan/screens/Disabled/disabled_screen.dart';
import 'package:ego_asistan/screens/Home/home_screen.dart';
import 'package:ego_asistan/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AudioPlayer myAudioPlayer = AudioPlayer();

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      playsound();
    });
  }

  @override
  void dispose() {
    myAudioPlayer.pause();
    super.dispose();
  }

  Future<void> playsound() async {
    String audioasset = "lib/assets/sounds/gorme-engelli.mp3";
    ByteData bytes = await rootBundle.load(audioasset);
    Uint8List soundbytes =
        bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
    myAudioPlayer.play(BytesSource(soundbytes));
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      child: Stack(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(height: 100),
                Image.asset('lib/assets/images/logo.png', height: 100),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    'Engelsiz Toplu Ulaşım \nMobil Uygulaması',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 60),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    'Görme Engelli Yolcularımız Ekranın Üst Kısmına Tıklayınız',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: Text('Bu Adımı Atla'),
                    ),
                  ),
                ),
                SizedBox(height: 60)
              ],
            ),
          ),
          GestureDetector(
            onPanUpdate: (details) {
              int sensitivity = 8;
              if (details.delta.dy > sensitivity) {
                // Down Swipe
              } else if (details.delta.dy < -sensitivity) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DisabledScreen()));
              }
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: double.infinity,
              color: Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}

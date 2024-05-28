import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Ringtone'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              child: const Text('playAlarm'),
              onPressed: () {
                FlutterRingtonePlayer().playAlarm();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              child: const Text('playAlarm asAlarm: false'),
              onPressed: () {
                FlutterRingtonePlayer().playAlarm(asAlarm: false);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              child: const Text('playNotification'),
              onPressed: () {
                FlutterRingtonePlayer().playNotification();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              child: const Text('playRingtone'),
              onPressed: () {
                FlutterRingtonePlayer().playRingtone();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              child: const Text('Play from asset (iphone.mp3)'),
              onPressed: () {
                FlutterRingtonePlayer().play(fromAsset: "assets/iphone.mp3");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              child: const Text('Play from asset (android.wav)'),
              onPressed: () {
                FlutterRingtonePlayer().play(fromAsset: "assets/android.wav");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              child: const Text('play'),
              onPressed: () {
                FlutterRingtonePlayer().play(
                  android: AndroidSounds.notification,
                  ios: IosSounds.glass,
                  looping: true,
                  volume: 1.0,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              child: const Text('stop'),
              onPressed: () {
                FlutterRingtonePlayer().stop();
              },
            ),
          ),
        ],
      ),
    );
  }
}

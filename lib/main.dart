import 'package:flutter/material.dart';
import 'package:music_player_ui/musicPlayer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MusicPlayer(),
    );
  }
}

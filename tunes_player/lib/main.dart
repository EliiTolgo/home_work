import 'package:flutter/material.dart';

void main() {
  runApp(TunesPlayer());
}

class TunesPlayer extends StatefulWidget {
  const TunesPlayer({super.key});

  @override
  State<TunesPlayer> createState() => _TunesPlayerState();
}

class _TunesPlayerState extends State<TunesPlayer> {
  List<Color> colors = [
    Color(0xffFE4039),
    Color(0xffFD982B),
    Color(0xffFDEB57),
    Color(0xff33AF57),
    Color(0xff009587),
    Color(0xff0097EC),
    Color(0xffA227AC),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff243139),
          title: Text('Flutter Tunes', style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          children:
              colors.map((color) {
                return Expanded(child: TunesContainer(color: color));
              }).toList(),
        ),
      ),
    );
  }
}

class TunesContainer extends StatelessWidget {
  const TunesContainer({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(width: double.infinity, color: color),
    );
  }
}

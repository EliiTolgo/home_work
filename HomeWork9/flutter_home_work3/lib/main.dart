import 'package:flutter/material.dart';
import 'package:homework9/BottonWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color = Color(0xFF6573C5);
  int numColors = 0;
  int value = 0;
  bool isTextBig = false;
  double? fontSize;
  String finalValue = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: color,
          label: Text('Increment', style: TextStyle(color: Colors.white)),
          icon: Icon(Icons.add, color: Colors.white, size: 20),
          onPressed: () {
            setState(() {
              value++;
              if (value % 2 == 0) {
                finalValue = 'Even : $value';
              } else {
                finalValue = 'Odd : $value';
              }
            });
          },
        ),
        appBar: AppBar(
          backgroundColor: color,
          title: Text(
            'Interactive UI Demo',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF858FD0),

                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    finalValue,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: fontSize,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Counter Value',
                  style: TextStyle(
                    color: color,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                value.toString(),
                style: TextStyle(
                  color: color,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          numColors = (numColors + 1) % 5;
                          switch (numColors) {
                            case 0:
                              color = Color(0xFF6573C5);
                              break;
                            case 1:
                              color = Color(0xFF8000A0);
                              break;
                            case 2:
                              color = Color(0xFFFFA500);
                              break;
                            case 3:
                              color = Color(0xFFFF1E68);
                              break;
                            case 4:
                              color = Color(0xFF2B4CD8);
                          }
                        });
                      },
                      child: BottonWidget(
                        icon: Icons.color_lens,
                        text: 'Change Color',
                        color: color,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 30),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isTextBig = !isTextBig;
                          isTextBig ? fontSize = 20 : fontSize = 15;
                        });
                      },
                      child: BottonWidget(
                        icon: Icons.format_size,
                        text: 'Change Size',
                        color: color,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

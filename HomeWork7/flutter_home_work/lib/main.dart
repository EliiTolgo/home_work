import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            color: const Color(0xFFbbdefa),
            width: 500,
            height: 630,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 50,
                      right: 50,
                      top: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        costomContainerWedget(
                          text: 'A',
                          color: Color(0xFFEE534F),
                          width: 90,
                          height: 50,
                          textcolor: Colors.white,
                        ),
                        costomContainerWedget(
                          text: 'B',
                          color: Color(0xFFFFA827),
                          width: 90,
                          height: 50,
                          textcolor: Colors.white,
                        ),
                        costomContainerWedget(
                          text: 'C',
                          color: Color(0xFFFDD734),
                          width: 90,
                          height: 50,
                          textcolor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      width: 500,
                      height: 255,
                      color: Color(0xFFC5CAE8),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Fancy Section',
                              style: TextStyle(
                                color: Color(0xFF4351A9),
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 90, right: 90),
                            child: costomRow(
                              text1: '1',
                              text2: '2',
                              text3: '3',
                              color1: Color(0xFF7E57C2),
                              color2: Color(0xFFAA47BC),
                              color3: Color(0xFF9675CE),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 90,
                              right: 90,
                              top: 20,
                            ),
                            child: costomRow(
                              text1: '4',
                              text2: '5',
                              text3: '6',
                              color1: Color(0xFFB968C7),
                              color2: Color(0xFFB29ED9),
                              color3: Color(0xFFCF93D9),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      'Info Cards',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4351A9),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        costomCard(
                          color: Color(0xFF23A299),
                          number: '23',
                          status: 'Active',
                        ),
                        costomCard(
                          color: Color(0xFFF4B122),
                          number: '15',
                          status: 'Pending',
                        ),
                        costomCard(
                          color: Color(0xFF459D4A),
                          number: '17',
                          status: 'Completed',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class costomCard extends StatelessWidget {
  const costomCard({
    super.key,
    required this.color,
    required this.number,
    required this.status,
  });
  final Color color;
  final String number;
  final String status;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 130,
      height: 130,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          Text(status, style: TextStyle(fontSize: 20, color: color)),
        ],
      ),
    );
  }
}

class costomRow extends StatelessWidget {
  const costomRow({
    super.key,
    this.text1,
    this.text2,
    this.text3,
    required this.color1,
    required this.color2,
    required this.color3,
  });
  final text1;
  final text2;
  final text3;
  final Color color1;
  final Color color2;
  final Color color3;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        costomContainerWedget(
          text: text1,
          color: color1,
          width: 80,
          height: 80,
          textcolor: Colors.white,
        ),
        costomContainerWedget(
          text: text2,
          color: color2,
          width: 80,
          height: 80,
          textcolor: Colors.white,
        ),
        costomContainerWedget(
          text: text3,
          color: color3,
          width: 80,
          height: 80,
          textcolor: Colors.white,
        ),
      ],
    );
  }
}

class costomContainerWedget extends StatelessWidget {
  costomContainerWedget({
    super.key,
    required this.text,
    required this.color,
    required this.width,
    required this.height,
    required this.textcolor,
  });
  final String text;
  final Color color;
  final double width;
  final double height;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textcolor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}

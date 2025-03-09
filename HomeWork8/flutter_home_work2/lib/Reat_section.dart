import 'package:flutter/material.dart';
import 'package:progict12/Communication_section.dart';

class ReatSection extends StatelessWidget {
  const ReatSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // List tie section
      padding: const EdgeInsets.only(left: 22, right: 22, top: 15),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: Color(0xFFF7F1F9),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 212, 212, 212),
              offset: Offset(0, 0.5),
              spreadRadius: 0.5,
            ),
          ],
        ),
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.location_on, color: Colors.red, size: 15),
                  Text(
                    'Kandersteg, Switzerland',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              isThreeLine: true,
              trailing: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 60,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFEAED),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: [
                        Icon(Icons.star, color: Colors.red, size: 20),
                        SizedBox(width: 5),
                        Text(
                          '4.1',
                          style: TextStyle(fontSize: 12, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(thickness: 1),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3, left: 50, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommunicationWidget(
                    icon: Icons.call,
                    text: 'call',
                    colorBG: Color(0xFFE2E7F9),
                    iconColor: Color(0xFF2498F2),
                  ),
                  CommunicationWidget(
                    icon: Icons.directions,
                    text: 'Route',
                    colorBG: Color(0xFFFE6EAE9),
                    iconColor: Color(0xFF4CB04D),
                  ),
                  CommunicationWidget(
                    icon: Icons.share,
                    text: 'Share',
                    colorBG: Color(0xFFEFDDF3),
                    iconColor: Color(0xFF982AB0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/widgets.dart';

import '../constants/assets.dart';

//ممكن اعمل ريفاكتور للشكل بتاع الزر
abstract class AppDecorations {
  static Decoration backgroundDecoration = ShapeDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.00, 1.00),
      end: Alignment(1.00, 0.17),
      colors: [Color(0xFFBB82FF), Color(0xFFC6C2F7)],
    ), // LinearGradient
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );
  // ممكن اعمل ريفاكتور لشكل الباك جراوند طالما هي بتتكرر
  static Decoration viewDecoration = BoxDecoration(
    image: DecorationImage(
      image: AssetImage(Assets.imageGRADINET),
      fit: BoxFit.fill,
    ),
  );
}

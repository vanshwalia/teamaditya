import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

Color kPrimaryColor = Color(0xFFFBE0C4);
Color kLightBlue = Color(0xFF8AB6D6);
Color kAccentColor = Color(0xFF0061A8);
Color kRed = const Color(0xFFDA0037);

TextStyle kTitleText =
    GoogleFonts.ubuntu(fontSize: 20.0, fontWeight: FontWeight.bold);

TextStyle kSubtitleText = GoogleFonts.ubuntu(
  fontSize: 12.0,
);

OutlinedButtonThemeData outlinedButtonThemeData = OutlinedButtonThemeData(
  style: ButtonStyle(
    side:
        MaterialStateProperty.all(BorderSide(color: kAccentColor, width: 1.5)),
    overlayColor: MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) return kRed;
        if (states.contains(MaterialState.focused) ||
            states.contains(MaterialState.pressed)) return kRed;
        return kAccentColor; // Defer to the widget's default.
      },
    ),
    foregroundColor: MaterialStateColor.resolveWith(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) return kPrimaryColor;
        if (states.contains(MaterialState.focused) ||
            states.contains(MaterialState.pressed)) return kPrimaryColor;
        return kAccentColor; // Defer to the widget's default.
      },
    ),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
  ),
);

TextButtonThemeData textButtonThemeData = TextButtonThemeData(
  style: ButtonStyle(
    side:
        MaterialStateProperty.all(BorderSide(color: kAccentColor, width: 1.5)),
    backgroundColor: MaterialStateColor.resolveWith((states) => kAccentColor),
    overlayColor: MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) return kRed;
        if (states.contains(MaterialState.focused) ||
            states.contains(MaterialState.pressed)) return kRed;
        return kAccentColor; // Defer to the widget's default.
      },
    ),
    foregroundColor: MaterialStateColor.resolveWith((states) => kPrimaryColor),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
  ),
);

class Constants {
  Future<void> launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}

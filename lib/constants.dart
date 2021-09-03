import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

Color kRed = const Color(0xFFF1444E);
Color kBlue = const Color(0xFF8CBEFE);
Color kPeach = const Color(0xFFFFCEC0);
Color kYellow = const Color(0xFFF7B200);

Color kPrimaryColor = Colors.white;
Color kAccentColor = Colors.black;

TextStyle kTitleText = GoogleFonts.ubuntu(fontSize: 20.0, fontWeight: FontWeight.bold);
TextStyle kSubtitleText = GoogleFonts.ubuntu(fontSize: 12.0,);

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


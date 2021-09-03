// import 'dart:html';
// import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:teamaditya/constants.dart';
import 'package:teamaditya/screens/widgets/blogwidget.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class LearnMore extends StatefulWidget {
  LearnMore({Key? key}) : super(key: key);
  @override
  State<LearnMore> createState() => _LearnMoreState();
}

class _LearnMoreState extends State<LearnMore> {
  Constants _constants = Constants();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: MediaQuery.of(context).size.width,),
            Spacer(),
            Spacer(),
            BlogWidget(url: 'url', imagepath: 'assets/aditya.png'),
            const Spacer(),
            GestureDetector(
              onTap: (){
                _constants.launchInBrowser('https://www.geeksforgeeks.org/flutter-ing-away-towards-his-dreams/');
              },
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      ),
                    ]),
                width: 400,
                height: 150,
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Image(
                          image: AssetImage(
                              'assets/gfg.png'
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text('FLUTTER-ing Away\nTowards His Dreams!', style: kTitleText,),
                        const SizedBox(
                          height: 10,
                        ),
                        Text('"In his two years of college as a\nComputer Science student, he has built a\ncommunity of 3.5K+ people on his\nYouTube channel."\nRead the full blog', style: kSubtitleText,),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

// import 'dart:html';
// import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:teamaditya/constants.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class LearnMore extends StatefulWidget {
  LearnMore({Key? key}) : super(key: key);
  @override
  State<LearnMore> createState() => _LearnMoreState();
}

class _LearnMoreState extends State<LearnMore> {
  Future<void> _launchInBrowser(String url) async {
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
  // late Widget _iframeWidget;
  // final IFrameElement _iframeElement = IFrameElement();
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _iframeElement.src = 'https://adityathakur.substack.com/embed';
  //   _iframeElement.style.border = 'none';
  //
  //   // ignore: undefined_prefixed_name
  //   ui.platformViewRegistry.registerViewFactory(
  //     'iframeElement',
  //         (int viewId) => _iframeElement,
  //   );
  //
  //   _iframeWidget = HtmlElementView(
  //     key: UniqueKey(),
  //     viewType: 'iframeElement',
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBlue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: MediaQuery.of(context).size.width,),
            Spacer(),
            Spacer(),
            GestureDetector(
              onTap: (){
                _launchInBrowser('https://adityathakurxd.medium.com/adityas-community-why-what-ae74f2af4680');
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
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image(
                          image: AssetImage(
                            'assets/aditya.png'
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text('Aditya’s Community\nWhy? What?', style: kTitleText,),
                        SizedBox(
                          height: 10,
                        ),
                        Text('"For me, a community is a mode of\nconnecting with my audience better,\nalso enable collaboration and share ideas,\nreceive feedback and grow."\nRead the full blog', style: kSubtitleText,),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: (){
                _launchInBrowser('https://www.geeksforgeeks.org/flutter-ing-away-towards-his-dreams/');
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
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
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
                        SizedBox(
                          height: 10,
                        ),
                        Text('FLUTTER-ing Away\nTowards His Dreams!', style: kTitleText,),
                        SizedBox(
                          height: 10,
                        ),
                        Text('"In his two years of college as a\nComputer Science student, he has built a\ncommunity of 3.5K+ people on his\nYouTube channel."\nRead the full blog', style: kSubtitleText,),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

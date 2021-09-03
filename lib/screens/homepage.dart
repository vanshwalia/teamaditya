import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teamaditya/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
          appBar: AppBar(
            backgroundColor: kPrimaryColor,
            title: Container(height: 50,child: Image(image: AssetImage('assets/aditya.png'),)),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: GestureDetector(
                  child: Row(
                    children: [
                      Icon(Icons.tv, size: 20,color: kAccentColor,),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text('YouTube', style: kSubtitleText.copyWith(color: kAccentColor, fontSize: 20),),
                      )
                    ],
                  ),
                  onTap: (){
                    _launchInBrowser('https://www.youtube.com/channel/UChCAJNpMwoEUYCsE_eSyU4w');
                  },
                ),
              ),
            ],
          ),
        body: Center(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 600) {
                return _buildForWeb(context);
              } else {
                return _buildForMobile(context);
              }
            },
          ),
        )
      ),
    );
  }

  Widget _buildForWeb(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SelectableText("450+ Developers", style: kTitleText.copyWith(fontSize: 70),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                _launchInBrowser('https://discord.com/invite/mx5tjevvQd');
              }, child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Join us on Discord', style: kTitleText,),
              )),
              const SizedBox(width: 20,),
              OutlinedButton(onPressed: (){
                _launchInBrowser('https://adityathakur.gumroad.com/l/resourcebook');
              }, child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Get Free Flutter Resource Book', style: kTitleText),
              ))
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildForMobile(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectableText("450+ Developers", style: kTitleText.copyWith(fontSize: 40),),
          SizedBox(height: 40,),
          TextButton(onPressed: (){
            _launchInBrowser('https://discord.com/invite/mx5tjevvQd');
          }, child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Join us on Discord', style: kTitleText,),
          )),
          const SizedBox(height: 10,),
          OutlinedButton(onPressed: (){
            _launchInBrowser('https://adityathakur.gumroad.com/l/resourcebook');
          }, child:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Get Free Flutter Resource Book', style: kTitleText),
          ))
        ],
      ),
    );
  }
}
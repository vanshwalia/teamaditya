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
        backgroundColor: kBlue,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(
              //   width: 200,
              //   height: 200,
              //   child: Padding(
              //     padding: const EdgeInsets.all(5.0),
              //     child: Image(
              //       image: AssetImage(
              //         'assets/aditya.png'
              //       ),
              //     ),
              //   ),
              // ),
              const Spacer(),
              MediaQuery.of(context).size.width > 600 ? Row(
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
              ) : Column(
                children: [
                  TextButton(onPressed: (){
                    _launchInBrowser('https://discord.com/invite/mx5tjevvQd');
                  }, child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Join us on Discord', style: kTitleText,),
                  )),
                  const SizedBox(height: 20,),
                  OutlinedButton(onPressed: (){
                    _launchInBrowser('https://adityathakur.gumroad.com/l/resourcebook');
                  }, child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Get Free Flutter Resource Book', style: kTitleText),
                  ))
                ],
              ),
              const Spacer(),
            ],
          ),
        )
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:teamaditya/constants.dart';

class ResourceBook extends StatelessWidget {
  ResourceBook({Key? key}) : super(key: key);
  Constants _constants = Constants();

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
          _constants.launchInBrowser(
              'https://adityathakur.gumroad.com/l/resourcebook');
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Get Free Flutter Resource Book',
              style: kTitleText),
        ),);
  }
}

import 'package:flutter/material.dart';
import 'package:teamaditya/constants.dart';

class DiscordButton extends StatelessWidget {
  DiscordButton({Key? key}) : super(key: key);
  Constants _constants = Constants();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        _constants.launchInBrowser('https://discord.com/invite/mx5tjevvQd');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Join us on Discord',
          style: kTitleText,
        ),
      ),
    );
  }
}

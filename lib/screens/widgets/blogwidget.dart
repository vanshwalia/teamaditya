import 'package:flutter/material.dart';
import 'package:teamaditya/constants.dart';

class BlogWidget extends StatelessWidget {
  final String url;
  final double width;
  final double height;
  final String imagepath;

  BlogWidget(
      {Key? key,
      required this.url,
      this.width = 400.0,
      this.height = 150.0,
      required this.imagepath})
      : super(key: key);
  final Constants _constants = Constants();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _constants.launchInBrowser(url);
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
        width: width,
        height: height,
        child: Row(
          children: [
            SizedBox(
              height: height,
              width: height,
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Image(
                  image: AssetImage('assets/aditya.png'),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: width-height,
                    height: height * 0.2,
                    child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          'Aditya’s Community\nWhy? What?',
                          style: kTitleText,
                        ))),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    width: width-height,
                    height: height * 0.8,
                    child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          '"For me, a community is a mode of\nconnecting with my audience better,\nalso enable collaboration and share ideas,\nreceive feedback and grow."\nRead the full blog',
                          style: kSubtitleText,
                        ))),
              ],
            )
          ],
        ),
      ),
    );
  }
}

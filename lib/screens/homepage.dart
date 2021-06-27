import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              width: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  width: 20,
                ),
                SelectableText(
                  'Team Aditya',
                  style: GoogleFonts.montserrat(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  'Discord',
                  style: GoogleFonts.montserrat(fontSize: 20),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'YouTube',
                  style: GoogleFonts.montserrat(fontSize: 20),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
            Container(


            )
          ],
        ),
      ),
    );
  }
}

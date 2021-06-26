import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Team',
                  style: GoogleFonts.montserrat(fontSize: 40.0)
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                  'Aditya',
                  style: GoogleFonts.merienda(fontSize: 40.0,fontWeight: FontWeight.w600)
              ),
            ],
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.message), text: 'Discord',),
              Tab(icon: Icon(Icons.video_call), text: 'YouTube',),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 150,
                )
              ],
            ),
            Icon(Icons.directions_transit),
          ],
        ),
      ),
    );
  }
}

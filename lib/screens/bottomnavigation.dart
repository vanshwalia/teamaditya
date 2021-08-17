import 'package:flutter/material.dart';
import 'package:teamaditya/screens/homepage.dart';
import 'package:teamaditya/screens/learnmore.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

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

  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    LearnMore(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBlue,
        title: Container(height: 50,child: Image(image: AssetImage('assets/aditya.png'),)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Icon(Icons.tv),
              onPressed: (){
                _launchInBrowser('https://www.youtube.com/channel/UChCAJNpMwoEUYCsE_eSyU4w');
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.markunread_mailbox,
            ),
            label: 'Learn More',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedIconTheme: IconThemeData(
          color: kAccentColor
        ),
        selectedItemColor: kAccentColor,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}

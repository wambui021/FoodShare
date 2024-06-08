import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:foodshare/screens/about.dart';
import 'package:foodshare/screens/home.dart';
import 'package:foodshare/screens/profile.dart';
import 'package:foodshare/screens/receipt.dart';

class Dashboard extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<Dashboard> {
  int _pageIndex = 0;

  final HomePage _homePage = HomePage();
  final ReceiptPage _receiptPage = ReceiptPage();
  final AboutsPage _aboutPage = AboutsPage();
  final ProfilePage _profilePage = ProfilePage();

  Widget _showPage = HomePage();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _homePage;
        break;
      case 1:
        return _receiptPage;
        break;
      case 2:
        return _aboutPage;
        break;
      case 3:
        return _profilePage;
        break;
      default:
        return Container(
          child: Center(
            child: Text('No page found!'),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
        child: _showPage,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _pageIndex,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.receipt, size: 30),
          Icon(Icons.info, size: 30),
          Icon(Icons.person, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (int tappedIndex) {
          setState(() {
            _showPage = _pageChooser(tappedIndex);
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}









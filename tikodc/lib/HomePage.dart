import 'package:flutter/material.dart';
import 'package:tikodc/pages/home.dart';
import 'package:tikodc/pages/inbox.dart';
import 'package:tikodc/pages/now.dart';
import 'package:tikodc/pages/plus.dart';
import 'package:tikodc/pages/profile.dart';



class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // bottom nav bar
  int  _selectedIndex = 0;
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    UserHomePage(),
    UserNowPage(),
    UserPlusPage(),
    UserInboxPage(),
    UserProfilePage(),
   

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items:  [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(icon: Icon(Icons.bolt), label: 'Now'),
        BottomNavigationBarItem(icon: Image.asset('assets/images/tiktok_add.png', height: 50,),label:'',),
          const BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_rounded), label: 'Inbox'),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],),
    );
  }
}
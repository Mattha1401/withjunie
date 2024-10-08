import 'package:flutter/material.dart';
import 'package:instagram_pp/insta_body.dart'; // Your home screen (InstaBody)
import 'package:instagram_pp/insta_search.dart'; // Your search screen (InstaSearch)
import 'package:instagram_pp/insta_add_post.dart'; // Your add post screen (InstaAddPost)
import 'package:instagram_pp/insta_reels.dart'; // Your reels screen (InstaReels)
import 'package:instagram_pp/insta_account.dart'; // Your account screen (InstaAccount)

class InstaHome extends StatefulWidget {
  @override
  _InstaHomeState createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  int _selectedIndex = 0;

  // List of pages corresponding to the icons
  final List<Widget> _pages = [
    const InstaBody(),        // Home Page
    InstaSearch(),      // Search Page
    InstaAddPost(),     // Add Post Page
    InstaReels(),       // Reels Page
    InstaAccount(),      // Account Page
  ];

  // Method to handle onTap on bottom navigation icons
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff8faf8),
        centerTitle: true,
        elevation: 1.0,
        leading: const Icon(Icons.camera_alt),
        title: SizedBox(
            height: 35.0, child: Image.asset("assets/images/insta_logo.png")),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.send),
          )
        ],
      ),
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped, // Handle icon tap to navigate
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Add Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library), // Reels-like icon
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: InstaHome(),
  ));
}





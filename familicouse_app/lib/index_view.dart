import 'package:familicouse_app/contact_view.dart';
import 'package:familicouse_app/favourite_view.dart';
import 'package:familicouse_app/home_view.dart';
import 'package:familicouse_app/message_view.dart';
import 'package:familicouse_app/time_view.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class IndexView extends StatefulWidget {
  const IndexView({Key? key}) : super(key: key);

  @override
  _IndexViewState createState() => _IndexViewState();
}

class _IndexViewState extends State<IndexView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(children: const [
        HomeView(),
        FavouriteView(),
        MessageView(),
        ContactView()
      ], index: _currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(UniconsLine.history), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(UniconsLine.heart), label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(UniconsLine.comment_dots), label: 'Message'),
          BottomNavigationBarItem(
              icon: Icon(UniconsLine.user), label: 'Profile'),
        ],
      ),
    );
  }
}

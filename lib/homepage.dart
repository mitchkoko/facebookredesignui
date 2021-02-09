import 'package:flutter/material.dart';
import 'package:ui/newpost.dart';
import 'package:ui/posts.dart';
import 'neumorphic.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Container(
          color: Colors.blue[700],
        ),
      ),
      endDrawer: Drawer(
        child: Container(
          color: Colors.blue[700],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            color: Colors.blue[700],
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 30, left: 24, right: 24, bottom: 24),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButton(
                      function: () {
                        _scaffoldKey.currentState.openDrawer();
                      },
                      child: Icon(
                        Icons.settings,
                        color: Colors.blue[100],
                      ),
                      color: Colors.blue,
                    ),
                    Text('f a c e b o o k',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    MyButton(
                      function: () {
                        _scaffoldKey.currentState.openEndDrawer();
                      },
                      child: Container(
                        height: 25,
                        width: 25,
                        child: Image.asset(
                          'lib/images/messengericon.png',
                          color: Colors.blue[100],
                        ),
                      ),
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 24),
            color: Colors.blue[800],
            child: NewPost(
              message: 'What\'s on your mind, Mitch?',
              imageLink: 'lib/images/profilepic.png',
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                MyPost(
                  name: 'Mark Zuckerberg',
                  message: 'I hope you guys like the 2021 redesign!',
                  time: 'just now',
                  imageLink: 'lib/images/zuckerberg.png',
                ),
                MyPost(
                  name: 'Jennie Kim',
                  message: 'HNY ♡ lmaoz',
                  time: '32 min',
                  imageLink: 'lib/images/profilepic2.png',
                ),
                MyPost(
                  name: 'Mitch Koh',
                  message: 'Happy NY! I wish everyone the best for 2021',
                  time: '2 h',
                  imageLink: 'lib/images/profilepic.png',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

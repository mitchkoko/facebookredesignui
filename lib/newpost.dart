import 'package:flutter/material.dart';
import 'profilepic.dart';

class NewPost extends StatelessWidget {
  final String message;
  final String imageLink;

  NewPost({this.message, this.imageLink});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, top: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          color: Colors.blue[700],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: ProfilePic(
                      imageLink: imageLink,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: 50,
                        color: Colors.blue[800],
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          onChanged: (text) {
                            // do something
                          },
                          decoration: InputDecoration(
                              hintText: message,
                              hintStyle: TextStyle(color: Colors.blue[100]),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hoverColor: Colors.blue[600],
                              contentPadding: EdgeInsets.all(20),
                              filled: true),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

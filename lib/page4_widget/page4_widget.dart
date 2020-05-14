/*
*  page5_widget.dart
*  Quiz5
*
*  Created by BB Caspian.
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:quiz4/page4_widget/alphabet_widget.dart';
import 'package:quiz4/values/values.dart';

class Page4Widget extends StatefulWidget {
  @override
  _Page4WidgetState createState() => _Page4WidgetState();
}

class _Page4WidgetState extends State<Page4Widget> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              left: 0,
              top: -1,
              right: 0,
              child: Image.asset(
                "assets/images/gradient.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              top: 16,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.only(left: 15),
                        child: FlatButton(
                          onPressed: () {
                            print('Back Arrow');
                          },
                          child: Image.asset(
                            "assets/images/back_arrow.png",
                          ),
                        )),
                  ),
                  Container(
                    height: 745,
                    margin: EdgeInsets.only(top: 27),
                    decoration: BoxDecoration(
                      color: AppColors.primaryBackground,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: ListView(
                        children: <Widget>[
                          Container(
                            child: TextField(
                              maxLines: 4,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Question...",
                                fillColor: Colors.grey[300],
                                filled: true,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(width: 40),
                              Container(
                                width: 150,
                                child: Text(
                                  'You may attach with snapshot of your question..',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              InkWell(
                                  onTap: () {
                                    print('Share');
                                  },
                                  child: Image.asset(
                                    'assets/images/Share.png',
                                    width: 24,
                                    height: 24,
                                  )),
                              SizedBox(width: 10),
                              InkWell(
                                  onTap: () {
                                    print('Camera');
                                  },
                                  child: Image.asset(
                                    'assets/images/Camera.png',
                                    width: 24,
                                    height: 24,
                                  )),
                            ],
                          ),
                          SizedBox(height: 30),
                          Container(
                            child: Row(
                              children: <Widget>[
                                //Image.asset('assets/images/a.png),
                                Image.asset('assets/images/A.png'),
                                SizedBox(width: 20),
                                Expanded(
                                  child: TextField(
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Answer.",
                                      fillColor: Colors.grey[300],
                                      filled: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Row(
                              children: <Widget>[
                                //Image.asset('assets/images/a.png),
                                Image.asset('assets/images/B.png'),
                                SizedBox(width: 20),
                                Expanded(
                                  child: TextField(
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Answer.",
                                      fillColor: Colors.grey[300],
                                      filled: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Row(
                              children: <Widget>[
                                //Image.asset('assets/images/a.png),
                                Image.asset('assets/images/C.png'),
                                SizedBox(width: 20),
                                Expanded(
                                  child: TextField(
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Answer.",
                                      fillColor: Colors.grey[300],
                                      filled: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Row(
                              children: <Widget>[
                                //Image.asset('assets/images/a.png),
                                Image.asset('assets/images/D.png'),
                                SizedBox(width: 20),
                                Expanded(
                                  child: TextField(
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Answer.",
                                      fillColor: Colors.grey[300],
                                      filled: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Row(
                              children: <Widget>[
                                //Image.asset('assets/images/a.png),
                                Image.asset('assets/images/D.png'),
                                SizedBox(width: 20),
                                Expanded(
                                  child: TextField(
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Answer.",
                                      fillColor: Colors.grey[300],
                                      filled: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            child: Row(
                              children: <Widget>[
                                SizedBox(width: 175),
                                Text('multiple answer'),
                                Checkbox(
                                    checkColor:
                                        Colors.red, // color of tick Mark
                                    activeColor: Colors.grey,
                                    focusColor: Colors.white,
                                    hoverColor: Colors.white,
                                    value: checkBoxValue,
                                    onChanged: (bool newValue) {
                                      setState(() {
                                        checkBoxValue = newValue;
                                      });
                                    }),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Alphabet(letter: 'A'),
                              SizedBox(width: 4),
                              Alphabet(letter: 'B'),
                              SizedBox(width: 4),
                              Alphabet(letter: 'C'),
                              SizedBox(width: 4),
                              Alphabet(letter: 'D'),
                              SizedBox(width: 4),
                              Alphabet(letter: 'E'),
                              SizedBox(width: 20),
                            ],
                          )),
                          SizedBox(height: 15),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    FlatButton(
                                        child: Image.asset(
                                            'assets/images/but_next.png'),
                                        onPressed: () {
                                          print('Next');
                                        }),
                                    SizedBox(width: 50),
                                    FlatButton(
                                        child: Image.asset(
                                            'assets/images/but_finish.png'),
                                        onPressed: () {
                                          print('Finish');
                                        })
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

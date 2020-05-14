import 'package:flutter/material.dart';

class Alphabet extends StatefulWidget {
  Alphabet({Key key, this.letter}) : super(key: key);

  final String letter;

  @override
  _AlphabetState createState() => _AlphabetState();
}

class _AlphabetState extends State<Alphabet> {
  bool multiple = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
          onTap: () {
            setState(() {
              print(widget.letter);
              multiple = true;
            });
          },
          child: Container(
            child: Stack(
              children: <Widget>[
                Image.asset('assets/images/' + widget.letter + '.png'),
                Positioned(
                  top: 8,
                  left: 4,
                  child: multiple == false ? Image.asset('assets/images/blank.png') : Image.asset('assets/images/check.png'),
                ),
              ],
            ),
          )),
    );
  }
}

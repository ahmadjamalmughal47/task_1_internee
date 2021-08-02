import 'package:flutter/material.dart';

class ColoredNumberedContainer extends StatelessWidget {
  final Color color;
  final int number;
  ColoredNumberedContainer(this.color, this.number);
  Widget build(BuildContext context) {
    return Align(
      heightFactor: 0.7,
      // padding for entire container
      child: Padding(
        padding: EdgeInsets.only(left: 7.0, right: 5.0, top: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            // padding for text
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                this.number.toString(),
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            color: this.color,
            width: MediaQuery.of(context).size.width,
            height: 150,
          ),
        ),
      ),
    );
  }
}

import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'card_content.dart';

class SlidingCard extends StatelessWidget {
  final String name; //<-- title of the event
  final String date; //<-- date of the event
  final String assetName;
  final double offset; //<-- name of the image to be displayed

  const SlidingCard({
    Key? key,
    required this.offset,
    required this.name,
    required this.date,
    required this.assetName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double gauss = math.exp(-(math.pow((offset.abs() - 0.5), 2) / 0.08));
    return Transform.translate(
        offset: Offset(-32 * gauss * offset.sign, 0),
        child: Card(
          margin: EdgeInsets.only(left: 8, right: 8, bottom: 24),
          elevation: 8,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32)), //<--custom shape
          child: Column(
            children: <Widget>[
              ClipRRect(
//<--clipping image
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(32)),
                child: Image.asset(
//<-- main image
                  'assets/$assetName',
                  height: MediaQuery.of(context).size.height * 0.3,
                  fit: BoxFit.none,
                ),
              ),
              SizedBox(height: 8),
              Expanded(
                child: CardContent(
                  name: name,
                  date: date,
                  offset: null,
                ),
              ),
            ],
          ),
        ));
  }
}

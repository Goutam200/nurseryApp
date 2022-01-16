//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/pages/SearchBox.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/widgets/themes.dart';

import 'PlantRow.dart';

class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SearchBox(),
          SizedBox(
            height: 30,
          ),
          Container(
            color: Colors.white54,
            margin: EdgeInsets.only(left: 15, right: 0),
            height: size.height * 0.28,
            child: Column(
              children: [
                categoryTitle(
                  size: size,
                  title: 'Flowering',
                ),
                plantRow()
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            color: Colors.white54,
            margin: EdgeInsets.only(left: 15, right: 0),
            height: size.height * 0.28,
            child: Column(
              children: [
                categoryTitle(
                  size: size,
                  title: 'Foliage',
                ),
                plantRow()
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            color: Colors.white54,
            margin: EdgeInsets.only(left: 15, right: 0),
            height: size.height * 0.28,
            child: Column(
              children: [
                categoryTitle(
                  size: size,
                  title: 'Indoor',
                ),
                plantRow()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class categoryTitle extends StatelessWidget {
  const categoryTitle({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  final Size size;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(top: 8),
            height: size.height * 0.06,
            width: size.width * 0.6,
            //color: Colors.green.shade300,
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
              textScaleFactor: 1.2,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

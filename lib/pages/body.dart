//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/pages/SearchBox.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/widgets/themes.dart';

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
                plantRow1()
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
                plantRow1()
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
                plantRow1()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class plantRow1 extends StatelessWidget {
  const plantRow1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        PlantsRow(
          image: CatalogModel.plants[0].image,
          title: CatalogModel.plants[0].name,
          press: () {},
        ),
        PlantsRow(
          image: CatalogModel.plants[1].image,
          title: CatalogModel.plants[1].name,
          press: () {},
        ),
        PlantsRow(
          image: CatalogModel.plants[0].image,
          title: CatalogModel.plants[0].name,
          press: () {},
        ),
        PlantsRow(
          image: CatalogModel.plants[1].image,
          title: CatalogModel.plants[1].name,
          press: () {},
        ),
      ]),
    );
  }
}

class PlantsRow extends StatelessWidget {
  const PlantsRow({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String image;
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 0, bottom: 6, left: 15, right: 0),
      width: size.width * 0.4,
      child: Card(
        child: Column(
          children: [
            Image.network(image),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 4),
                width: size.width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 15,
                          color: MyTheme.pLightColor.withOpacity(0.10))
                    ]),
                child: Text(
                  title.toUpperCase(),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
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

//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/models/Nursery.dart';
//import 'package:flutter_application_1/pages/SearchBox.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/widgets/PlantRow.dart';
import 'package:flutter_application_1/widgets/SearchBox.dart';
import 'package:flutter_application_1/widgets/themes.dart';

//import 'PlantRow.dart';

class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SearchBox(),
          SizedBox(height: 30),
          HomeContainer(
            title: "Flowering",
            list: CatalogModel.plants,
          ),
          SizedBox(height: 30),
          HomeContainer(
            title: "Foliage",
            list: CatalogModel.plants,
          ),
          SizedBox(height: 30),
          HomeContainer(
            title: "Indoor",
            list: CatalogModel.plants,
          ),
          SizedBox(height: 30),
          HomeContainer(
            title: "Nursery",
            list: NurseryModel.nursery,
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}

class HomeContainer extends StatelessWidget {
  const HomeContainer({Key? key, required this.title, required this.list})
      : super(key: key);
  final String title;
  final List list;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Colors.white54,
      margin: EdgeInsets.only(left: 15, right: 0),
      height: size.height * 0.28,
      child: Column(
        children: [
          categoryTitle(
            title: title,
          ),
          plantRow(list: list)
        ],
      ),
    );
  }
}

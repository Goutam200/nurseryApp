import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/models/Category.dart';
import 'package:flutter_application_1/pages/homepage.dart';

class PlantPage extends StatefulWidget {
  const PlantPage({Key? key}) : super(key: key);

  @override
  State<PlantPage> createState() => _PlantPageState();
}

class _PlantPageState extends State<PlantPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 1));
    final categoryJson =
        await rootBundle.loadString("assets/files/Category.json");
    var decodeData = jsonDecode(categoryJson);
    var categoryData = decodeData["Category"];
    CategoryModel.category = List.from(categoryData)
        .map<Category>((category) => Category.fromMap(category))
        .toList();

    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plants By Category"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 15),
        child: ListView.builder(
          itemCount: CategoryModel.category.length,
          itemBuilder: (context, index) {
            final category = CategoryModel.category[index];
            return Card(
              child: ListTile(
                leading: Image.network(
                  category.image,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                title: Text(category.name),
                minVerticalPadding: 24,
              ),
            );
          },
        ),
      ),
    );
  }
}

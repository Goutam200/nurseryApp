import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/models/Category.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/PlantPage.dart';
import 'package:flutter_application_1/utils/routes.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _PlantPageState();
}

class _PlantPageState extends State<CategoryPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 0));
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
          shrinkWrap: true,
          itemCount: CategoryModel.category.length,
          itemBuilder: (context, index) {
            final mycategory = CategoryModel.category[index];
            return Card(
              child: ListTile(
                leading: Image.network(
                  mycategory.image,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                title: Text(mycategory.name),
                minVerticalPadding: 20,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PlantPage(item: mycategory)),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

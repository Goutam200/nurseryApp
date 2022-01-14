import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/itemWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 50;

  final String name = "Goutam Gunjal";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 1));
    final plantJson = await rootBundle.loadString("assets/files/plant.json");
    var decodeData = jsonDecode(plantJson);
    var plantsData = decodeData["Plants"];
    CatalogModel.plants = List.from(plantsData)
        .map<Plant>((plant) => Plant.fromMap(plant))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //final dummyList = List.generate(10, (index) => CatalogModel.plants[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Nursery app"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: (CatalogModel.plants != null) && CatalogModel.plants.isNotEmpty
            ? ListView.builder(
                itemCount: CatalogModel.plants.length,
                itemBuilder: (context, index) {
                  return PlantWidget(
                    plant: CatalogModel.plants[index],
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}

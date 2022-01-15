import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/pages/body.dart';
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
        title: Text(
          "Plant InfoCare",
          textAlign: TextAlign.center,
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        elevation: 0,
      ),
      body: body(),
      drawer: MyDrawer(),
    );
  }
}

class plantBlock extends StatefulWidget {
  const plantBlock({Key? key}) : super(key: key);

  @override
  _plantBlockState createState() => _plantBlockState();
}

class _plantBlockState extends State<plantBlock> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        final plant = CatalogModel.plants[index];
        return Card(
          child: GridTile(
            child: Image.network(
              plant.image,
              height: 50,
              //fit: BoxFit.fill,
            ),
            footer: Text(
              plant.name,
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
      itemCount: CatalogModel.plants.length,
    );
  }
}

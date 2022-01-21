import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Catalog.dart';

class PlantInfoPage extends StatelessWidget {
  const PlantInfoPage({Key? key, required this.plant}) : super(key: key);

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(plant.name),
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset(plant.image),
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
          )
        ],
      ),
    );
  }
}

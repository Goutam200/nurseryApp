import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/pages/PlantInfoPage.dart';
import 'package:flutter_application_1/widgets/ItemTile.dart';

class PlantPage extends StatelessWidget {
  const PlantPage({Key? key, required this.item}) : super(key: key);
  final item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: GridView.builder(
          itemCount: CatalogModel.plants.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            Plant plant = CatalogModel.plants[index];

            return ItemTile(
                press: (){},
                item: plant);
          }),
    );
  }
}

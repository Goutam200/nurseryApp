
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/widgets/themes.dart';

class plantRow extends StatelessWidget {
  const plantRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        PlantItem(
          image: CatalogModel.plants[0].image,
          title: CatalogModel.plants[0].name,
          press: () {},
        ),
        PlantItem(
          image: CatalogModel.plants[1].image,
          title: CatalogModel.plants[1].name,
          press: () {},
        ),
        PlantItem(
          image: CatalogModel.plants[0].image,
          title: CatalogModel.plants[0].name,
          press: () {},
        ),
        PlantItem(
          image: CatalogModel.plants[1].image,
          title: CatalogModel.plants[1].name,
          press: () {},
        ),
      ]),
    );
  }
}

class PlantItem extends StatelessWidget {
  const PlantItem({
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
                    //color: Colors.white,
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


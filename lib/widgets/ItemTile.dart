import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({
    Key? key,
    required this.press,
    this.item,
  }) : super(key: key);

  final press;
  final dynamic item;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        width: size.width * 0.4,
        child: Card(
          child: Column(
            children: [
              Image.network(
                item.image,
                width: size.width * 0.4,
                height: 120,
                fit: BoxFit.fill,
              ),
              Container(
                //height: 20,
                padding: EdgeInsets.symmetric(vertical: 0),
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
                  item.name.toUpperCase(),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

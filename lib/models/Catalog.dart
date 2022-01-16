class CatalogModel {
  static List<Plant> plants = [
    Plant(1, "Tulsi", 102, "https://blog-images.pharmeasy.in/2021/03/31223439/shutterstock_1486021787-1.jpg"),
    Plant(2, "ManiPlant", 112, "https://4.imimg.com/data4/TJ/TN/MY-11114742/money-plant-500x500.jpg"),
    Plant(3, "Alovera", 112, "https://4.imimg.com/data4/TJ/TN/MY-11114742/money-plant-500x500.jpg"),
  ];
}

class Plant {
  final num id;
  final String name;
  final int price;
  final String image;

  Plant(this.id, this.name, this.price, this.image);

  factory Plant.fromMap(Map<String, dynamic> map) {
    return Plant(map["id"], map["name"], map["price"], map["image"]);
  }

  toMap() => {"id": id, "name": name, "price": price, "image": image};
}



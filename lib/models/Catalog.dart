class CatalogModel {
  static List<Plant> plants = [];
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



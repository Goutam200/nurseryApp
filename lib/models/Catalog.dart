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

// final products = [
//   Item(1, "iPhone12 pro", "Apple iPhone 12th generation", 999, "#33505A",
//       "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MHLN3?wid=2000&hei=2000&fmt=jpeg&qlt=95&.v=1601352338000")
// ];

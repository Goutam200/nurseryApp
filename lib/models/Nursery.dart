class NurseryModel {
  static List<Nursery> nursery = [];
}

class Nursery {
  final String name;
  final String image;
  final String location;

  Nursery(this.name, this.image, this.location);

  factory Nursery.fromMap(Map<String, dynamic> map) {
    return Nursery(map["name"], map["image"], map["location"]);
  }

  //toMap() => {"id": id, "name": name, "price": price, "image": image};
}

class CategoryModel {
  static List<Category> category = [
    Category(" Plant",
        "https://hips.hearstapps.com/housebeautiful.cdnds.net/18/07/1518540708-selection-of-houseplants.jpg")
  ];
}

class Category {
  final String name;
  final String image;

  Category(this.name, this.image);

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(map["name"], map["image"]);
  }

  //toMap() => {"id": id, "name": name, "price": price, "image": image};
}

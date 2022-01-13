class CatalogModel {
  static final items = [
    Item(1, "iPhone12 pro", "Apple iPhone 12th generation", 999, "#33505A",
        "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MHLN3?wid=2000&hei=2000&fmt=jpeg&qlt=95&.v=1601352338000")
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String image;

  Item(this.id, this.name,this.desc, this.price, this.color, this.image);
}

final products = [
  Item(1, "iPhone12 pro", "Apple iPhone 12th generation", 999, "#33505A",
      "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MHLN3?wid=2000&hei=2000&fmt=jpeg&qlt=95&.v=1601352338000")
];

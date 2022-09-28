class Product {
  String id, name, description, image;
  int price;
  Product(
      {required this.name,
      required this.id,
      this.description = '',
      required this.price,
      required this.image});
}

class Product {
  String? id;
  String name;
  String imageUrl;
  String description;
  double unitPrice;

  Product({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.unitPrice,
    this.id
  });
}
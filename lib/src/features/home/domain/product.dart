class Product {
  final String name;
  final String category;
  final String price;
  final String badge;
  final String? rating;
  final String? discount;
  final String imageAsset;

  Product({
    required this.name,
    required this.category,
    required this.price,
    required this.badge,
    this.rating,
    this.discount,
    required this.imageAsset,
  });
}

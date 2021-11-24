class Products {
  final String id, title, description, imageUrl;
  final double price;
  bool isFavorite;

  Products(
      {required this.id,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.price,
      this.isFavorite = false});
}

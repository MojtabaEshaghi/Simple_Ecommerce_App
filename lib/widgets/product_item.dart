import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id, title, imageUrl;

  ProductItem({required this.id, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        title: Text(title,textAlign: TextAlign.center,),
      ),
    );
  }
}
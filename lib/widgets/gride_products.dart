import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/widgets/product_item.dart';

import '../widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  final bool showfav;

  ProductsGrid(this.showfav);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = showfav ? productsData.favoriteItems : productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 3 / 2, crossAxisSpacing: 10),
      itemBuilder: (ctx, i) => Padding(
          padding: const EdgeInsets.all(2.0),
          child: ChangeNotifierProvider.value(
            value: products[i],
            child: ProductItem(),
          )),
      itemCount: products.length,
    );
  }
}

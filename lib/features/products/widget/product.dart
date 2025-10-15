import 'package:coresal/features/products/models/product_model.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key, required this.product});

  final ProductModel product ;

  @override
  Widget build(BuildContext context) {
    return Card(

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${product.id}'),
            Text(product.title),
            Image.network(product.image,width: 100,height: 100,),
            Text(product.description),
            Text('\$ ${product.price}'),
            Row(
              children: [
                Text('Category: ${product.category}'),
                Text('Rating: ${product.rating.rate} (${product.rating.count} reviews) ')
              ],
            )
          ],
        ),
      ),
    );
  }
}

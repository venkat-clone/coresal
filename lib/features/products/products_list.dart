import 'package:coresal/features/products/widget/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/ProductListProvider.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products List')),
      body: Consumer<ProductListProvider>(
        builder:
            (BuildContext context, ProductListProvider value, Widget? child) {
          if (value.error != null && value.error != '') {
            return Text(
              'Error : ${value.error}',
              style: const TextStyle(color: Colors.red),
            );
          }

          if (value.isLoading()) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            );
          }

          if (value.products().isEmpty) {
            return const Center(
              child: Text(
                'No Products Found try again Later ',
                style: TextStyle(color: Colors.black),
              ),
            );
          }

          return ListView.builder(
            itemCount: value.products().length,
            padding: const EdgeInsets.all(16.0),
            itemBuilder: (context, index) {
              final product = value.products()[index];
              return Product(
                key: Key(index.toString()),
                product:product,
              );
            },
          );
        },
      ),

    );
  }
}

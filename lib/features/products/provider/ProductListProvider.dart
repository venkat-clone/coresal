
import 'package:coresal/features/products/models/product_model.dart';
import 'package:coresal/util/dio.dart';
import 'package:flutter/material.dart';
import 'package:coresal/repository/productRepository.dart';

class ProductListProvider extends ChangeNotifier{
  final _productRepository = ProductRepository();
  List<ProductModel> _products = [];

  List<ProductModel> products() =>_products;

  final ValueNotifier<bool> _loading = ValueNotifier(false);

  bool isLoading() => _loading.value;
  String? error = '';

  ProductListProvider(){
    getProducts();
  }

  getProducts () async {
    try{
      _loading.value = true;
      _products = await _productRepository.getProducts();
      _loading.value = false;
    }catch(e){
      error = e.toString();
      _loading.value = false;
      print(e);
    }
    notifyListeners();
  }
}
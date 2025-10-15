

import 'package:coresal/features/products/models/product_model.dart';
import 'package:coresal/util/dio.dart';

class ProductRepository {
  final _dioClient = DioClient();
  
  Future<List<ProductModel>> getProducts() async {
    final response = await _dioClient.dio.get('/products');
    return (response.data as List).map((e)=>ProductModel.fromJson(e)).toList();
  }
}
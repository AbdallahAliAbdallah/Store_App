
import 'package:appstore/helper/api.dart';
import 'package:appstore/models/product_model.dart';



class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data = await Api().get(
        url: 'https://fakestoreapi.com/products');
    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]),);
    }
    return productsList;
  }
}
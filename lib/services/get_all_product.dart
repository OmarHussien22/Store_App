import 'package:storeapp/helpers/api.dart';
import 'package:storeapp/models/product_model.dart';

class AllProductServices {
  // method of class AllProductServices
  //this Method return List Of ProductModel
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products', token: '');

    List<ProductModel> productsList = [];

    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromjson(data[i]),
      );
    }
    return productsList;
  }
}

import 'package:flutter_getx/model/product_response.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static var client = http.Client();

static Future<List<Product>> fetchProducts() async {
    var response = await http.get(Uri.parse(
        'http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
    throw Exception('failed to load products');
    }
  }
}

// import 'dart:';

import 'package:flutter_getx/helpers/remote_services.dart';
import 'package:flutter_getx/model/product_response.dart';
import 'package:get/state_manager.dart';


class ProductController extends GetxController {
 var productList = <Product>[].obs;


  @override
  void onInit() {
    fetchProductData();
    
    super.onInit();
  }

  void fetchProductData() async {
    var product = await ApiServices.fetchProducts();
    if (product != null) {
      productList.value = product;
    }
  }
}

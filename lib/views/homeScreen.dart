import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/productController.dart';
import 'package:flutter_getx/utils/product_tile.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text('Flutter Getx'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Shopix',
                    style: TextStyle(
                        fontFamily: 'avenir',
                        fontSize: 32,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.view_list_rounded),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.grid_view),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(
              () => StaggeredGridView.countBuilder(
                //  gridDelegate: gridDelegate
                crossAxisCount: 2,
                itemCount: productController.productList.length,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                itemBuilder: (context, index) {
                  // return Container(
                  //   height: 200,
                  //   width: 100,
                  //   color: Colors.red,
                  // );
                  return ProductTile(productController.productList[index]);
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

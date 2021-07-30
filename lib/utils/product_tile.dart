import 'package:flutter/material.dart';
import 'package:flutter_getx/model/product_response.dart';


class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                     ),
                     child: Image.network(
                       product.imageLink,
                       fit: BoxFit.cover,
                     ),
                )
              ],

            ),
        
        SizedBox(height: 8),
        Text(
          product.name,
          maxLines: 2,
          style: TextStyle(
            fontFamily: 'avenir', fontWeight: FontWeight.w900),
            overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 8),
        // if(product.rating != null)
        
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(4.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    product.rating.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.star,
                    size: 16,
                    color: Colors.white,
                  ),
                  
                ],
              ),
            )
        
          ],
        ),
    ));
  }
}

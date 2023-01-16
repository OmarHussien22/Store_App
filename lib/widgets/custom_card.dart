import 'package:flutter/material.dart';
import 'package:storeapp/models/product_model.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    required this.product,
    Key? key,
  });
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 40,
            offset: const Offset(10, 10),
            spreadRadius: 0,
          )
        ]),
        child: Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  product.title.substring(0, 6),
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      r'$' '${product.price.toString()}',
                      style: TextStyle(fontSize: 18),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 28,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      Positioned(
          right: 10,
          bottom: 90,
          child: Image.network(
            product.image,
            height: 100,
            width: 100,
          ))
    ]);
  }
}

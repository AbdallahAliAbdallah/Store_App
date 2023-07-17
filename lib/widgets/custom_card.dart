import 'package:appstore/models/product_model.dart';
import 'package:appstore/update_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget{
  CustomCard({required this.product});
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print(product);
        Navigator.of(context).pushNamed( UpdateProductpage.id,arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.2),
                  blurRadius: 10,
                  spreadRadius: 0,
                  offset: Offset(10, 10)

              )
            ]),

            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${product.title.substring(0,6)}',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          r'$''${product.price.toString()}',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Spacer(),
                        Icon(Icons.favorite, color: Colors.red)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(top: -60, right: 30,
              child:Image(
                  width: 100,
                height: 100,
                  image:NetworkImage('${product.image}')),
          ),
        ],
      ),
    );
  }

}
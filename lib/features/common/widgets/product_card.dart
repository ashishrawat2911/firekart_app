import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttercommerce/core/navigation/navigation_handler.dart';
import 'package:fluttercommerce/features/app/res/text_styles.dart';
import 'package:fluttercommerce/features/common/models/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(this.productModel, {Key? key}) : super(key: key);

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        NavigationHandler.navigateTo(
          ProductDetailPageRoute(
            productModel: productModel,
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: AspectRatio(
                aspectRatio: 1.6,
                child: CachedNetworkImage(
                  imageUrl: productModel.image!,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    productModel.name!,
                    style: AppTextStyles.t1,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "${productModel.currency}${productModel.currentPrice}",
                        style: AppTextStyles.t8,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "${productModel.currency}${productModel.actualPrice}",
                        style: AppTextStyles.t13,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${productModel.quantityPerUnit}${productModel.unit}",
                    style: AppTextStyles.t14,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

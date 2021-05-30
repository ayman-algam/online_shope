import 'package:flutter/material.dart';
import 'package:online_shope/Screens/details_screen/components/product_title_with_image.dart';
import 'package:online_shope/constants.dart';
import 'package:online_shope/models/product.dart';

import 'add_to_card.dart';
import 'add_to_favorites.dart';
import 'buy_now.dart';
import 'cart_counter.dart';
import 'colors_and_size.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  height: 500,
                  margin: EdgeInsets.only(top: size.height * .3),
                  padding: EdgeInsets.only(
                      top: size.height * .12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorsAndSize(product: product),
                      Description(product: product),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [CartCounter(), const AddToFavorites()],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding),
                        child: Row(
                          children: [
                            AddToCard(product: product),
                            BuyNow(product: product)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}

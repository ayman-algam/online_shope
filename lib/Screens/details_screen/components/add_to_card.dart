import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:online_shope/models/product.dart';

import '../../../constants.dart';


class AddToCard extends StatelessWidget {
  const AddToCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 58,
      margin:
      const EdgeInsets.only(right: kDefaultPadding),
      decoration: BoxDecoration(
        border: Border.all(
          color: product.color,
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          "assets/icons/add_to_cart.svg",
          color: product.color,
        ),
      ),
    );
  }
}

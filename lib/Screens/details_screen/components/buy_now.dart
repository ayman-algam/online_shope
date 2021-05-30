import 'package:flutter/material.dart';
import 'package:online_shope/models/product.dart';


class BuyNow extends StatelessWidget {
  const BuyNow({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 50,
        // ignore: deprecated_member_use
        child: FlatButton(
          onPressed: () {},
          child: Text(
            "Buy Now".toUpperCase(),
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          color: product.color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17),),
        ),
      ),
    );
  }
}

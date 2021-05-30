import 'package:flutter/material.dart';
import 'package:online_shope/models/product.dart';

import '../../../constants.dart';


class ColorsAndSize extends StatelessWidget {
  const ColorsAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Colors',
                style: TextStyle(
                  color: kTextColor,
                ),
              ),
              Row(
                children: [
                  ColorDot(
                    color: const Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(
                    color: const Color(0xFFF8C078),
                  ),
                  ColorDot(
                    color: const Color(0xFFA29B9B),
                  )
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: kTextColor),
              children: [
                const TextSpan(
                  text: "Size\n",
                ),
                TextSpan(
                    text: "${product.size} cm",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  bool isSelected;

  ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      padding: const EdgeInsets.all(2.5),
      margin: const EdgeInsets.only(
          top: kDefaultPadding / 2, right: kDefaultPadding / 2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

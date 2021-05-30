import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddToFavorites extends StatelessWidget {
  const AddToFavorites({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          color:Color(0xFFFF6464),
          shape: BoxShape.circle
      ),
      child: SvgPicture.asset("assets/icons/heart.svg"),
    );
  }
}

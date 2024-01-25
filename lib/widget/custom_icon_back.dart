import 'package:flutter/material.dart';

import '../core/constant/image_assets.dart';

class CustomIconBack extends StatelessWidget {
  const CustomIconBack({
    Key? key,
    this.imageIcon = AppImageAsset.background,
    this.backgroundColor = Colors.white,
    required this.onPressed,
  }) : super(key: key);

  final String imageIcon;
  final Color backgroundColor;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), // Shadow color
              spreadRadius: 5, // Spread radius
              blurRadius: 7, // Blur radius
              offset: const Offset(0, 3), // Shadow position
            ),
          ],
          image: DecorationImage(
            image: AssetImage(
              imageIcon,
            ),
          ),
        ),
        // child: Icon(FontAwesomeIcons.arrowDown),
      ),
    );
  }
}

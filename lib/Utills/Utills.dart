import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Utils {
  static  customAppBar(image1, image2) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(60),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15),
              child: SvgPicture.asset(image1),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 15),
              child: SvgPicture.asset(image2),
            ),
          ],
        ),
      ),
    );
  }
}
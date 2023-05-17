// ignore_for_file: prefer_typing_uninitialized_variables, duplicate_ignore

import 'package:flutter/material.dart';

// ignore: duplicate_ignore
/// ImageContainer creates container with specific height and width
/// and use Image as backgroung image of the container
class ImageContainer extends StatelessWidget {
  final double? height, width;
  final String? assetImage;
  // ignore: prefer_typing_uninitialized_variables
  final fit;
  final color;
  const ImageContainer(
      {Key? key,
      this.height,
      this.fit,
      this.width,
      this.assetImage,
      this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        image: DecorationImage(
          image: AssetImage(assetImage!),
          fit: fit,
        ),
      ),
    );
  }
}

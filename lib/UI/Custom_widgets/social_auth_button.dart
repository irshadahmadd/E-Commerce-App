import 'package:fashion_valley/UI/Custom_widgets/image_container.dart';
import 'package:flutter/material.dart';

class SocialAuthButton extends StatelessWidget {
  final String? image;
  // ignore: prefer_typing_uninitialized_variables
  final onTap;
  const SocialAuthButton({Key? key, this.image, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 47,
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFD9D8D7), width: 1.5),
              borderRadius: BorderRadius.circular(8)),
          child: UnconstrainedBox(
            child: ImageContainer(assetImage: image, height: 39, width: 39),
          ),
        ),
      ),
    );
  }
}

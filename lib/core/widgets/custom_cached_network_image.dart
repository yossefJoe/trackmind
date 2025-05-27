import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:trackmind/core/utils/constants/constants.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final Widget? child;
  final double height;
  final double width;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  const CustomCachedNetworkImage(
      {super.key,
      required this.imageUrl,
      this.child,
      required this.height,
      required this.width,
      this.padding,
      this.borderRadius});
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: Constants.constImageUrl + imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        child: child,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
          borderRadius: borderRadius ?? BorderRadius.circular(10),
        ),
        padding: padding ?? const EdgeInsets.all(20),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}

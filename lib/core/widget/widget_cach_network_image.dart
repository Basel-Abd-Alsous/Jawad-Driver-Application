import 'package:cached_network_image_plus/flutter_cached_network_image_plus.dart';
import 'package:flutter/material.dart';

class WidgetCachNetworkImage extends StatelessWidget {
  final String image;
  final BoxFit? boxFit;
  final double? radius;
  final bool? isOutApp;

  const WidgetCachNetworkImage({super.key, required this.image, this.boxFit, this.radius, this.isOutApp = false});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 0),
      child: CacheNetworkImagePlus(
        imageUrl: image,
        imageBuilder:
            (context, imageProvider) => Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius ?? 0),
                image: DecorationImage(image: imageProvider, fit: boxFit ?? BoxFit.cover),
              ),
            ),
        errorWidget: Image(image: AssetImage('assets/images/icon_jawad.png')),
      ),
    );
  }
}

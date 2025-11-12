import 'dart:io';
import 'package:flutter/material.dart';
import '../../../core/widget/widget_cach_network_image.dart';

class EditProfileImage extends StatelessWidget {
  final String image;
  final Function(File) onSelectImage;

  const EditProfileImage({super.key, required this.image, required this.onSelectImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () async {},
          child: Container(
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(color: Colors.black.withOpacity(.1), shape: BoxShape.circle),
            child: WidgetCachNetworkImage(image: image),
          ),
        ),
      ],
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/services/hive/box_key.dart';
import '../../../core/utils/color.dart';
import '../../../core/widget/widget_cach_network_image.dart';
import '../../../injection_container.dart';
import '../../layout/domain/model/user_model.dart';
import '../controller/profile_cubit.dart';

class WidgetDriverImage extends StatelessWidget {
  const WidgetDriverImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return ValueListenableBuilder<File>(
              valueListenable: context.read<ProfileCubit>().imageBuyer,
              builder: (context, file, child) => Container(
                width: 100,
                height: 100,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.secondColor, width: 2),
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(blurRadius: 1, blurStyle: BlurStyle.outer, offset: const Offset(0.3, 0), color: AppColor.secondColor)],
                ),
                child: file.path != ''
                    ? Image.file(file, fit: BoxFit.cover)
                    : ValueListenableBuilder<Box<Driver>>(
                        valueListenable: sl<Box<Driver>>().listenable(),
                        builder: (context, box, child) {
                          Driver? buyerInfo = box.get(BoxKey.user);
                          if (buyerInfo?.profileImage == null || (buyerInfo?.profileImage!.isEmpty ?? true)) {
                            return Image.asset(Assets.imagesProfile, fit: BoxFit.fill);
                          } else {
                            return WidgetCachNetworkImage(radius: 1000, image: buyerInfo?.profileImage ?? '');
                          }
                        },
                      ),
              ),
            );
          },
        ),
        Container(
          width: 30,
          height: 30,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [BoxShadow(blurRadius: 0, blurStyle: BlurStyle.outer, offset: Offset(0.1, 0))],
            color: Colors.white,
          ),
          child: Center(
            child: IconButton(
              splashRadius: 20,
              onPressed: () => context.read<ProfileCubit>().selectImageBuyer(),
              icon: Icon(Icons.edit, color: AppColor.secondColor, size: 15),
            ),
          ),
        ),
      ],
    );
  }
}

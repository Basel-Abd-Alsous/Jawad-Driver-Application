import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/extension/space_extension.dart';
import '../../../core/utils/color.dart';
import '../../../core/utils/text_style.dart';
import '../../../core/widget/widget_text_field.dart';
import '../../../injection_container.dart';
import '../controller/chat_cubit.dart';
import '../domain/model/chat_model.dart';

class ChatScreen extends StatelessWidget {
  final int id;
  const ChatScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ChatCubit>()..getAllChat(id),
      child: BlocBuilder<ChatCubit, ChatState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(centerTitle: true, title: Text('Chat', style: AppTextStyle.style16B)),
            body: ValueListenableBuilder(
              valueListenable: context.read<ChatCubit>().allMessage,
              builder:
                  (context, value, child) => ListView.separated(
                    itemCount: value.reversed.length,
                    reverse: true,

                    padding: EdgeInsets.all(10),
                    separatorBuilder: (context, index) => 5.gap,
                    itemBuilder: (context, index) {
                      Message data = value.reversed.toList()[index];
                      return Column(
                        mainAxisAlignment: data.type != 'driver' ? MainAxisAlignment.end : MainAxisAlignment.start,
                        crossAxisAlignment: data.type != 'driver' ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                        spacing: 5,
                        children: [
                          Row(
                            mainAxisAlignment: data.type != 'driver' ? MainAxisAlignment.end : MainAxisAlignment.start,
                            crossAxisAlignment: data.type != 'driver' ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: AppColor.black.withOpacity(data.type != 'driver' ? 0.2 : 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  data.message ?? '',
                                  style: AppTextStyle.style14.copyWith(color: data.type != 'driver' ? AppColor.black : AppColor.white),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(data.time ?? '', style: AppTextStyle.style10.copyWith(color: AppColor.black)),
                          ),
                        ],
                      );
                    },
                  ),
            ),
            bottomNavigationBar: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: WidgetTextField(
                  'Message ...',
                  controller: context.read<ChatCubit>().messageController,
                  suffixIcon: IconButton.filled(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
                      ),
                    ),
                    color: AppColor.black,
                    onPressed: () => context.read<ChatCubit>().sendMessage(id),
                    icon: Icon(Icons.send, color: AppColor.white),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

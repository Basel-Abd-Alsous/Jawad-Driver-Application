import 'package:flutter/material.dart';

import '../utils/color.dart';

class WidgetDilog extends StatelessWidget {
  final bool? isError;
  final String title;
  final String message;
  final String? confirmText;
  final VoidCallback? onConfirm;
  final String cancelText;
  final VoidCallback onCancel;

  const WidgetDilog({
    super.key,
    this.isError = false,
    required this.title,
    required this.message,
    this.confirmText,
    this.onConfirm,
    required this.cancelText,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 300,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(isError == true ? Icons.warning_amber_rounded : Icons.check, size: 60, color: isError == true ? AppColor.red : AppColor.green),
          const SizedBox(height: 10),
          Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(message, textAlign: TextAlign.center),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: onCancel, child: Text(cancelText)),
              const SizedBox(width: 10),
              if (onConfirm != null) ElevatedButton(onPressed: onConfirm, child: Text(confirmText!)),
            ],
          ),
        ],
      ),
    );
  }
}

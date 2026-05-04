import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/function/hex_color.dart';
import '../domain/model/drawal_model.dart';

class WidgetDrawalCard extends StatelessWidget {
  final DrawalItem payload;

  const WidgetDrawalCard({super.key, required this.payload});

  String _formatDate(String? date) {
    if (date == null) return "- - - - - -";
    try {
      final dt = DateTime.parse(date);
      return DateFormat('dd MMM yyyy, hh:mm a').format(dt);
    } catch (e) {
      return date;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        gradient: LinearGradient(colors: [Colors.white, Colors.grey.shade50], begin: Alignment.topLeft, end: Alignment.bottomRight),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 12, offset: const Offset(0, 6))],
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// TOP ROW (ID + STATUS)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Transaction #${payload.id ?? "- - - - - -"}", style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(color: HexColor.fromHex(payload.status?.mobileColor ?? "").withOpacity(0.1), borderRadius: BorderRadius.circular(20)),
                child: Text(
                  payload.status?.status.toString() ?? "- - - - - -",
                  style: TextStyle(fontSize: 12, color: HexColor.fromHex(payload.status?.mobileColor ?? ""), fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          /// AMOUNT
          Row(
            children: [
              const Icon(Icons.payments, size: 18, color: Colors.blueGrey),
              const SizedBox(width: 6),
              Text(
                "${payload.amount ?? 0}",
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              const SizedBox(width: 6),
              SvgPicture.asset(Assets.svgSar, width: 15, height: 15),
            ],
          ),
          const SizedBox(height: 10),
          Row(children: [_infoChip(Icons.account_balance, payload.method ?? "- - - - - -"), const SizedBox(width: 8), _infoChip(Icons.phone, payload.phone?.toString() ?? "-")]),
          const SizedBox(height: 10),
          if (payload.note != null) Text(payload.note.toString(), style: TextStyle(fontSize: 13, color: Colors.grey.shade700)),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: .end,
            children: [
              const Icon(Icons.calendar_today, size: 14, color: Colors.grey),
              const SizedBox(width: 6),
              Text(_formatDate(payload.createdAt), style: const TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _infoChip(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: Colors.black54),
          const SizedBox(width: 4),
          Text(text, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

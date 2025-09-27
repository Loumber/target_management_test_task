import 'package:flutter/material.dart';
import 'package:target_management_test_task/models/indicator_models.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskCard extends StatelessWidget {
  final IndicatorRow item;
  const TaskCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.surface,
        border: Border.all(color: Theme.of(context).dividerColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(item.name, style: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w600))],
      ),
    );
  }
}

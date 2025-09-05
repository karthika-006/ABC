// lib/widgets/summary_card.dart
import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget child;
  final Color cardColor;
  final Color iconColor;

  const SummaryCard({
    super.key,
    required this.icon,
    required this.title,
    required this.child,
    this.cardColor = Colors.white,
    this.iconColor = Colors.black54,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      color: cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: iconColor),
                const SizedBox(width: 8.0),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12.0),
            child, // This is where the custom content for each card goes
          ],
        ),
      ),
    );
  }
}
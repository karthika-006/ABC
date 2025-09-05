// lib/widgets/info_header.dart
import 'package:flutter/material.dart';

class InfoHeader extends StatelessWidget {
  const InfoHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Hello, Rajesh!',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Today: Sep 3',
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Icon(Icons.pets, color: Colors.grey[700], size: 20),
            const SizedBox(width: 8),
            const Text('Animals: 120'),
            const SizedBox(width: 24),
            Icon(Icons.shield_outlined, color: Colors.grey[700], size: 20),
            const SizedBox(width: 8),
            const Text('Safe Products: 94%'),
          ],
        ),
      ],
    );
  }
}
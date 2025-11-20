import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String subtitle;
  final String title;
  final bool center;

  const SectionTitle({
    super.key,
    required this.subtitle,
    required this.title,
    this.center = false,
  });

  @override
  Widget build(BuildContext context) {
    final align = center ? TextAlign.center : TextAlign.left;

    return Column(
      crossAxisAlignment:
          center ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          subtitle,
          textAlign: align,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.blueGrey,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          textAlign: align,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

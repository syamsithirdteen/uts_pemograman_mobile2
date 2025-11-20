import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String count;
  final bool active;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.title,
    required this.count,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130, // fixed width to avoid overflow
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
        decoration: BoxDecoration(
          color: const Color(0xFF0E2433),
          borderRadius: BorderRadius.circular(12),
          border: active ? Border.all(color: Colors.orange, width: 1.5) : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 34, color: Colors.white),
            const SizedBox(height: 10),
            Text(title,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w700)),
            const SizedBox(height: 6),
            Text(count,
                style: TextStyle(color: Colors.grey.shade300, fontSize: 12)),
          ],
        ),
      ),
    );
  }
}

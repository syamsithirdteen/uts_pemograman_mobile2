import 'package:flutter/material.dart';
import 'search_bar.dart';

class HeroSection extends StatelessWidget {
  final void Function(ThemeMode)? onThemeChanged;
  final ThemeMode? currentMode;

  const HeroSection({
    super.key,
    this.onThemeChanged,
    this.currentMode,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bannerHeight = size.height * 0.42;

    return SizedBox(
      height: bannerHeight + 80,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Background banner
          Container(
            height: bannerHeight,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/banner.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Blue overlay
          Container(
            height: bannerHeight,
            width: double.infinity,
            color: Colors.blue.withOpacity(0.55),
          ),

          // Titles
          Positioned(
            left: 20,
            top: bannerHeight * 0.25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Let's Find Your",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  "Dream House.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // Search Bar (This is the important part!)
          Positioned(
            left: 20,
            right: 20,
            bottom: -40,
            child: const SearchBarWidget(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/hero_section.dart';
import '../widgets/section_title.dart';
import '../widgets/category_item.dart';
import '../widgets/property_card.dart';
import '../widgets/location_slider.dart';
import '../widgets/search_bar.dart';
import '../widgets/fade_in.dart';
import '../utils/responsive.dart';

class HomePage extends StatelessWidget {
  final void Function(ThemeMode)? onThemeChanged;
  final ThemeMode? currentMode;

  const HomePage({
    super.key,
    this.onThemeChanged,
    this.currentMode,
  });

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    final categories = [
      {'icon': Icons.apartment, 'title': 'Commercial', 'count': '6 Properties'},
      {'icon': Icons.warehouse, 'title': 'Warehouse', 'count': '6 Properties'},
      {'icon': Icons.villa, 'title': 'Villa', 'count': '6 Properties'},
      {'icon': Icons.home_work, 'title': 'Apartment', 'count': '6 Properties'},
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 226, 227),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// HERO WITH SEARCH BAR
              HeroSection(
                onThemeChanged: onThemeChanged,
                currentMode: currentMode,
              ),

              const SizedBox(height: 70),

              /// CATEGORY SECTION
              FadeIn(
                delay: const Duration(milliseconds: 150),
                child: Column(
                  children: [
                    const SectionTitle(
                      subtitle: 'Property By Requirement',
                      title: 'Explore Apartment Types',
                      center: true,
                    ),
                    const SizedBox(height: 18),
                    SizedBox(
                      height: 132,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        itemCount: categories.length,
                        separatorBuilder: (_, __) => const SizedBox(width: 14),
                        itemBuilder: (_, i) {
                          final item = categories[i];
                          return CategoryItem(
                            icon: item['icon'] as IconData,
                            title: item['title'] as String,
                            count: item['count'] as String,
                            active: i == 1,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              /// LISTING SECTION
              FadeIn(
                delay: const Duration(milliseconds: 260),
                child: Column(
                  children: [
                    const SectionTitle(
                      subtitle: 'Our Listing',
                      title: 'Find Home Listing in Your Area',
                      center: true,
                    ),
                    const SizedBox(height: 18),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: isDesktop
                          ? Row(
                              children: const [
                                Expanded(
                                  child: PropertyCard(
                                    image: 'assets/images/property1.jpg',
                                    title: 'Elevation Small Apartments',
                                    price: '\$299.00',
                                  ),
                                ),
                                SizedBox(width: 18),
                                Expanded(
                                  child: PropertyCard(
                                    image: 'assets/images/property2.jpg',
                                    title: 'West Square Apartments',
                                    price: '\$260.00',
                                  ),
                                ),
                                SizedBox(width: 18),
                                Expanded(
                                  child: PropertyCard(
                                    image: 'assets/images/property3.jpg',
                                    title: 'Peninsula Apartments',
                                    price: '\$310.00',
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              children: const [
                                PropertyCard(
                                  image: 'assets/images/property1.jpg',
                                  title: 'Elevation Small Apartments',
                                  price: '\$299.00',
                                ),
                                SizedBox(height: 18),
                                PropertyCard(
                                  image: 'assets/images/property2.jpg',
                                  title: 'West Square Apartments',
                                  price: '\$260.00',
                                ),
                                SizedBox(height: 18),
                                PropertyCard(
                                  image: 'assets/images/property3.jpg',
                                  title: 'Peninsula Apartments',
                                  price: '\$310.00',
                                ),
                              ],
                            ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              /// LOCATION SLIDER
              FadeIn(
                delay: const Duration(milliseconds: 420),
                child: Column(
                  children: const [
                    SectionTitle(
                      subtitle: 'Our Property List',
                      title: 'Our Top Location For You Property',
                      center: true,
                    ),
                    SizedBox(height: 18),
                    LocationSlider(
                      images: [
                        'assets/images/location1.jpg',
                        'assets/images/location2.jpg',
                        'assets/images/location3.jpg',
                        'assets/images/location4.jpg',
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}

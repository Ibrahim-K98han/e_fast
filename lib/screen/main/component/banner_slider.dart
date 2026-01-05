import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_fast/screen/utils/app_color.dart';
import 'package:flutter/material.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  final List<String> _bannerImages = [
    'https://images.unsplash.com/photo-1494412574643-ff11b0a5c1c3?w=800&q=80',
    'https://images.unsplash.com/photo-1566576912321-d58ddd7a6088?w=800&q=80',
    'https://images.unsplash.com/photo-1607082349566-187342175e2f?w=800&q=80',
  ];

  int _currentBanner = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 120,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 1,
            autoPlayInterval: const Duration(seconds: 4),
            onPageChanged: (index, reason) {
              setState(() {
                _currentBanner = index;
              });
            },
          ),
          items: _bannerImages.map((imageUrl) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(
                        color: Colors.grey[200],
                        child: const Icon(Icons.image, size: 60),
                      ),
                    ),

                    // Gradient overlay
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.4),
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),

                    // Text
                    Positioned(
                      left: 20,
                      bottom: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'দেশজুড়া ডেলিভারি',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'দ্রুত এবং নিরাপদ সার্ভিস',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),

        const SizedBox(height: 10),


        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _bannerImages.asMap().entries.map((entry) {
            bool isActive = _currentBanner == entry.key;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: isActive ? 10 : 6,
              height: isActive ? 10 : 6,
              decoration: BoxDecoration(
                color: isActive ? primaryColor : Colors.grey[300],
                shape: BoxShape.circle,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

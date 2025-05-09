import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyAnimatedSmoothIndicator extends StatelessWidget {
  const MyAnimatedSmoothIndicator({
    Key? key,
    required this.carouselIndex,
    required this.images,
  }) : super(key: key);

  final int? carouselIndex;
  final List images;

  @override
  Widget build(BuildContext context) {
    // Check if images list is empty
    if (images.isEmpty) {
      return SizedBox
          .shrink(); // Return an empty widget if images list is empty
    }

    return AnimatedSmoothIndicator(
      effect: ExpandingDotsEffect(
        dotColor: Colors.white.withOpacity(0.8),
        activeDotColor: Colors.white,
        dotHeight: 8,
        dotWidth: 8,
      ),
      activeIndex: (carouselIndex ?? 0)
          .clamp(0, images.length - 1), // Safely handle activeIndex
      count: images.length, // Use the length of the images list
    );
  }
}

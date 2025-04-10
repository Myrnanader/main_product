import 'package:flutter/material.dart';
import 'package:product/widgets/arrow_back.dart';
import 'package:product/widgets/product_images.dart';
import 'package:product/widgets/product_main_image.dart';

class CustomTopSection extends StatefulWidget {
  const CustomTopSection({super.key});

  @override
  State<CustomTopSection> createState() => _CustomTopSectionState();
}

class _CustomTopSectionState extends State<CustomTopSection> {
  int selectedIndex = 0;

  final List<String> imagePaths = [
    'images/headphone.jpg',
    'images/headphone2.jpg',
    'images/headphone3.jpg',
    'images/cat.jpg',
  ];

  void _onImageTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            const ArrowBack(),
            ProductImages(
              imagePaths: imagePaths,
              selectedIndex: selectedIndex,
              onImageTap: _onImageTap,
            ),
          ],
        ),
        const SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: SizedBox(
            height: 400,
            child: Stack(
              alignment: Alignment.center,
              children: [
                ProductMainImage(imagePath: imagePaths[selectedIndex]),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

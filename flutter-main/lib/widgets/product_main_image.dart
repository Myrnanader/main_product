import 'package:flutter/material.dart';
import 'contained_favorite_icon.dart';

class ProductMainImage extends StatelessWidget {
  final String imagePath;
  const ProductMainImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                //width: double.infinity,
                height: 250,
              ),
            ),

            Positioned(
              top: 16,
              right: 16,
              child: const ContainedFavoriteIcon(),
            ),
          ],
        ),
      ),
    );
  }
}

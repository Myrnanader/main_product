import 'package:flutter/material.dart';

class ProductImages extends StatelessWidget {
  final List<String> imagePaths;
  final int selectedIndex;
  final Function(int) onImageTap;

  const ProductImages({
    super.key,
    required this.imagePaths,
    required this.selectedIndex,
    required this.onImageTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320, 
      width: 70,   
      child: ListView.builder(
        scrollDirection: Axis.vertical, 
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => onImageTap(index), 
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: _buildProductImage(imagePaths[index], index == selectedIndex),
            ),
          );
        },
      ),
    );
  }

  Widget _buildProductImage(String imagePath, bool isSelected) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: isSelected ? Colors.redAccent : Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: isSelected ? Colors.red : Colors.grey,
          width: isSelected ? 3 : 1,
        ),
        boxShadow: [
          BoxShadow(
            color: isSelected ? Colors.red.withOpacity(0.3) : Colors.black12,
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProductRate extends StatelessWidget {
  final String rate;
  const ProductRate({super.key, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4), 
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 237, 235, 235),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: Colors.amber,
            size: 20, 
          ),
          const SizedBox(width: 4),
          Text(
            rate,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

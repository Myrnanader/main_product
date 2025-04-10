import 'package:flutter/material.dart';
import '../widgets/product_rate.dart';
import '../widgets/color_options.dart';
import '../widgets/add_to_card_button.dart';

class ProductDetails extends StatelessWidget {
  final String name;
  final String description;
  final String rate;
  final String price;

  const ProductDetails({
    super.key,
    required this.name,
    required this.description,
    required this.rate,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              ProductRate(rate: rate),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: const TextStyle(fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                const Icon(
                  Icons.list_alt,
                  color: Color.fromARGB(255, 77, 77, 77),
                ),
                const SizedBox(width: 8),
                const Text(
                  "Product Specifications",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          const Divider(color: Colors.grey, thickness: 1),
          const SizedBox(height: 16),
          const ColorOptions(),
          const SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: price.toString().split('.')[0], // الجزء الصحيح
                      style: const TextStyle(fontSize: 28),
                    ),
                    TextSpan(
                      text:
                          '.${price.toString().split('.')[1]}', // الجزء العشري
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              const AddToCartButton(),
            ],
          ),
        ],
      ),
    );
  }
}

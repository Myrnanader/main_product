import 'package:flutter/material.dart';
import 'package:product/widgets/custom_top_section.dart';
import 'package:product/widgets/product_details.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTopSection(),
              ProductDetails(
                name: 'Sony WH-1000XM4',
                description:
                    'Wireless Over-ear Industry Leading Noise Canceling Headphones with Microphone',
                rate: '(4.9)',
                price: '\$349.99',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ArrowBack extends StatefulWidget {
  const ArrowBack({super.key});

  @override
  ArrowBackState createState() => ArrowBackState();
}

class ArrowBackState extends State<ArrowBack> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8), 
      decoration: BoxDecoration(
        color: const Color(0xFFF0F0F0), 
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(100, 0, 0, 0), 
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: IconButton(
        icon: const Icon(Icons.arrow_back, size: 28, color: Colors.black),
        onPressed: () {
         // Navigator.pop(context); 
        },
      ),
    );
  }
}

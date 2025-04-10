import 'package:flutter/material.dart';

class ColorOptions extends StatefulWidget {
  const ColorOptions({super.key});

  @override
  _ColorOptionsState createState() => _ColorOptionsState();
}

class _ColorOptionsState extends State<ColorOptions> {
  Color _selectedColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(Icons.color_lens, color: Color.fromARGB(255, 77, 77, 77)),
        const SizedBox(width: 8),
        const Text(
          "Colors",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const Spacer(), 
        _buildColorCircle(Colors.black),
        _buildColorCircle(Colors.blueGrey),
        _buildColorCircle(const Color.fromARGB(255, 254, 253, 252)),
      ],
    );
  }

  Widget _buildColorCircle(Color color) {
    bool isSelected = color == _selectedColor;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedColor = color;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: Border.all(
              color: isSelected ? Colors.red : Colors.transparent,
              width: 3,
            ),
          ),
          child:
              isSelected ? const Icon(Icons.check, color: Colors.white) : null,
        ),
      ),
    );
  }
}

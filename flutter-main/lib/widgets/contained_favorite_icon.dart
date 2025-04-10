import 'package:flutter/material.dart';

class ContainedFavoriteIcon extends StatefulWidget {
  const ContainedFavoriteIcon({super.key});

  @override
  ContainedFavoriteIconState createState() => ContainedFavoriteIconState();
}

class ContainedFavoriteIconState extends State<ContainedFavoriteIcon> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(6), 
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300, width: 1.5),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 201, 201, 201),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) => ScaleTransition(
            scale: animation,
            child: child,
          ),
          child: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            key: ValueKey<bool>(isFavorite), 
            color: isFavorite ? Colors.red : Colors.black,
            size: 30,
          ),
        ),
      ),
    );
  }
}

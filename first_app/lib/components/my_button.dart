import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final Widget child; // Properly typed as Widget

  const MyButton({
    Key? key,
    required this.onTap,
    required this.child,
  }) : super(key: key); // Correct constructor syntax

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(25),
        child: child,
        // Add any additional styling or properties to the Container as needed
        
      ),
    );
  }
}

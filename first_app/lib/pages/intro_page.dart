import 'package:first_app/components/my_button.dart'; // Import your custom MyButton widget
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key); // Corrected constructor syntax

  String rootName(String route) {
    return route; 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.shopping_bag,
            size: 72,
            color: Theme.of(context).colorScheme.primary,
          ),

          const SizedBox(height: 25),

          const Text(
            "rpl-Mart",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),

          const SizedBox(height: 25),

          Text(
            "swalayan mobile",
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          MyButton(
            onTap: () => Navigator.pushNamed(context, rootName('/login-page')),
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}

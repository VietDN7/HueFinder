import 'package:flutter/material.dart';

class HowToPlayScreen extends StatelessWidget {
  const HowToPlayScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,  // This ensures left alignment
                children: const [
                  Text(
                    'How to Play',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Welcome to HueFinder!'
                    '\nThis game tests your ability to recognize RGB values and how they interact with each other. '
                    'When you press play, the game will present you with an RGB value, and your task is to match it with one of the squares provided. '
                    'Remember, RGB stands for Red, Green, and Blue. '
                    'The higher the value for a color, the closer it is to that color. '
                    'When combined, they create white, and the absence of all colors results in black. '
                    'You have three lives, so try to get as many correct as you can.'
                    '\nGood luck!',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800],
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                size: 48,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
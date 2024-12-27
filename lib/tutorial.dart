import 'package:flutter/material.dart';

class HowToPlayScreen extends StatelessWidget {
  const HowToPlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'How to Play',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Ensures text is white
                    ),
                    textAlign: TextAlign.center,
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
                      fontSize: 20.0,
                      color: Colors.white70, // Ensures text is white
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 48.0,
            left: 0, // Align to the left edge
            right: 0, // Align to the right edge
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[800], // Button background color
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40), // Increased padding
                ),
                onPressed: () {
                  Navigator.pop(context); // Pops the current screen
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 32.0, // Increased icon size
                  color: Colors.white, // Ensures icon is white
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

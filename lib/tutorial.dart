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
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'How to Play',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Ensures text is white
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Vestibulum vehicula ex nec sem facilisis, ac pretium purus pulvinar.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white70, // Ensures text is white
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800], // Button background
                foregroundColor: Colors.white, // Icon color
              ),
              onPressed: () {
                Navigator.pop(context); // Pops the current screen
              },
              child: const Icon(
                Icons.arrow_back,
                size: 24.0,
                color: Colors.white, // Ensures icon is white
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'This is the Game Screen.',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Ensures text is white on dark background
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Text(
              'Game content will appear here.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white70, // Slightly lighter text for secondary information
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

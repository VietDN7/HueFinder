import 'package:flutter/material.dart';
import 'game.dart';
import 'tutorial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HueFinder',
      theme: ThemeData(
        brightness: Brightness.dark, // Ensures dark mode
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E1E1E), // Base color for dark mode
          brightness: Brightness.dark,
        ),
        iconTheme: const IconThemeData(color: Colors.white), // Global icon color
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'HueFinder',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Ensure title text is white
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800], // Button background color
                foregroundColor: Colors.white, // Icon/text color
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GameScreen()),
                );
              },
              child: const Icon(
                Icons.play_arrow, // Icon for "Play"
                size: 32,
                color: Colors.white, // Explicitly set the icon color to white
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800], // Button background color
                foregroundColor: Colors.white, // Icon/text color
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HowToPlayScreen()),
                );
              },
              child: const Icon(
                Icons.help_outline, // Icon for "How To Play"
                size: 32,
                color: Colors.white, // Explicitly set the icon color to white
              ),
            ),
          ],
        ),
      ),
    );
  }
}

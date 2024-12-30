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
                fontSize: 64,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Ensure title text is white
              ),
            ),
            const SizedBox(height: 20),
            // Row of three squares with individual gradients
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                // Define a gradient color for each square based on its index
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: index == 0
                          ? [Colors.red, Colors.orange]
                          : index == 1
                              ? [Colors.yellow, Colors.green]
                              : [Colors.blue, Colors.purple],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              }),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800], // Button background color
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GameScreen()),
                );
              },
              child: const Icon(
                Icons.play_arrow, // Icon for "Play"
                size: 48,
                color: Colors.white, // Explicitly set the icon color to white
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800], // Button background color
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HowToPlayScreen()),
                );
              },
              child: const Icon(
                Icons.question_mark, // Icon for "How To Play"
                size: 48,
                color: Colors.white, // Explicitly set the icon color to white
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math';
import 'over.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});
  @override
  GameScreenState createState() => GameScreenState();
}

class GameScreenState extends State<GameScreen> {
  final Random random = Random();
  late int r, g, b;
  late int targetSquareIndex;
  late List<Color> squareColors;
  late List<bool> squareVisibility;
  String feedbackText = '';
  int lives = 3;
  int score = 0;
  bool isAcceptingInput = true;

  static const TextStyle textStyle = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  @override
  void initState() {
    super.initState();
    initializeGame();
  }

  void initializeGame() {
    r = random.nextInt(256);
    g = random.nextInt(256);
    b = random.nextInt(256);
    Color targetColor = Color.fromRGBO(r, g, b, 1.0);
    targetSquareIndex = random.nextInt(9);
    feedbackText = '';
    isAcceptingInput = true;
    squareVisibility = List.generate(9, (_) => true);  // Initialize all squares as visible
    squareColors = List.generate(9, (index) {
      if (index == targetSquareIndex) {
        return targetColor;
      } else {
        while (true) {
          int newR = random.nextInt(256);
          int newG = random.nextInt(256);
          int newB = random.nextInt(256);

          if (!(newR == r && newG == g && newB == b)) {
            return Color.fromRGBO(newR, newG, newB, 1.0);
          }
        }
      }
    });
  }

  void onSquareTap(int index) {
    if (!isAcceptingInput) return;

    setState(() {
      isAcceptingInput = false;
      
      if (index == targetSquareIndex) {
        feedbackText = 'Correct!';
        score++;
        // Make all squares the correct color
        Color correctColor = squareColors[targetSquareIndex];
        squareColors = List.generate(9, (_) => correctColor);
        
        Future.delayed(const Duration(milliseconds: 2500), () {
          if (mounted) {
            setState(() {
              feedbackText = '';
              initializeGame();
            });
          }
        });
      } else {
        feedbackText = 'Incorrect.';
        lives--;
        
        // Hide all squares except the correct one
        squareVisibility = List.generate(9, (i) => i == targetSquareIndex);

        if (lives <= 0) {
          lives = 0;
          Future.delayed(const Duration(milliseconds: 2500), () {
            if (mounted) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => OverScreen(finalScore: score),
                ),
              );
            }
          });
        } else {
          Future.delayed(const Duration(milliseconds: 2500), () {
            if (mounted && feedbackText == 'Incorrect.') {
              setState(() {
                feedbackText = '';
                initializeGame();
              });
            }
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 24.0),
                child: Text(
                  'RGB($r, $g, $b)',
                  style: textStyle,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Icon(
                      Icons.favorite,
                      color: index < lives ? Colors.red : Colors.grey,
                      size: 32.0,
                    ),
                  ),
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  double gridSize = constraints.maxWidth;
                  return SizedBox(
                    width: gridSize,
                    height: gridSize,
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                      ),
                      itemCount: 9,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => onSquareTap(index),
                          child: Opacity(
                            opacity: squareVisibility[index] ? 1.0 : 0.0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: squareColors[index],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 24.0),
                child: Text(
                  'Score: $score',
                  style: textStyle,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 12.0),
                child: Text(
                  feedbackText,
                  style: textStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
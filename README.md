# HueFinder

HueFinder is an educational color matching game built with Flutter that teaches RGB color theory through engaging gameplay. Players learn to recognize and understand RGB color values while trying to match colors in an intuitive and fun way.

## Features

- RGB-based color matching gameplay
- Lives system with three attempts
- Score tracking and end-game summary
- Dynamic color generation
- Quick replay option
- Easy navigation

## Learning Objectives

HueFinder helps players understand:
- RGB color composition
- How different RGB values interact
- Color recognition and matching
- The relationship between RGB values and visible colors

## Game Flow

### 1. Home Screen
- Title with demonstrative color gradients
- Play button to start the game
- How to Play button for accessing the tutorial

### 2. Tutorial
The tutorial explains:
- Basic RGB color theory
- How RGB values work together
- Game mechanics and objectives
- Scoring system
- Lives system

### 3. Gameplay
- **Start**: Begin with 3 lives
- **Each Round**:
  - View the target RGB color code
  - Select the matching color from the 3x3 grid
  - Receive immediate visual feedback
- **Scoring**:
  - +1 point for each correct match
  - Lose a life for incorrect choices
  - Game ends when all lives are lost

### 4. Game Over Screen
- Displays final score
- Two navigation options:
  - Play Again: Start a new game immediately
  - Home: Return to the main menu

## Installation

### Prerequisites
- Flutter SDK 3.27.1 or higher
- Dart SDK 3.6.0 or higher
- Android Studio or VS Code with Flutter extensions

### Setup
1. Clone the repository:
```bash
git clone https://github.com/VietDN7/HueFinder.git
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```
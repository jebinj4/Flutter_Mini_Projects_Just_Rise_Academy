<!--
  BMI Calculator
  A simple and interactive Body Mass Index (BMI) calculator built with Flutter.
  This app allows users to input their height and weight, select gender, and instantly see their BMI result with a clean and modern UI.
-->

# BMI Calculator App

A beautiful and interactive Body Mass Index (BMI) Calculator built with Flutter. This app allows users to easily calculate their BMI by selecting their gender, adjusting their height, weight, and age, and instantly viewing their results.

## Features

- Clean and modern UI
- Gender selection with icons
- Adjustable height slider
- Weight and age increment/decrement controls
- Real-time BMI calculation
- Responsive design for Android, iOS, and web

## Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Dart
- An IDE such as VS Code or Android Studio

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/lovelyn2001/Bmi.git
   ```
2. Navigate to the project directory:
   ```bash
   cd xylophone_app
   ```
3. Get the dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

## Folder Structure

- `lib/` - Main Dart source files (UI, logic, widgets)
- `lib/data/` - Data models and question schemas
- `lib/models/` - Data schemas for questions
- `assets/` - App assets (images, icons, etc.)
- `android/`, `ios/`, `web/`, `linux/`, `macos/`, `windows/` - Platform-specific files

## Main Files

- `main.dart` - App entry point and theme setup
- `input_page.dart` - Main UI for BMI input and calculation
- `age_card.dart`, `weight_card.dart`, `resuable_card.dart`, `child_widget.dart` - Custom widgets for UI components
- `constants.dart` - App-wide constants and enums

## Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

## License

This project is licensed under the MIT License.

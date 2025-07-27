import 'dart:math';
import 'package:flutter/material.dart';
import '../models/color_palette.dart';

class ColorUtils {
  static final Random _random = Random();
  
  static final List<String> _paletteNames = [
    'Sunset Dreams',
    'Ocean Breeze',
    'Forest Whisper',
    'Mountain Peak',
    'Desert Bloom',
    'Aurora Lights',
    'Cosmic Journey',
    'Spring Garden',
    'Autumn Leaves',
    'Winter Frost',
    'Tropical Paradise',
    'Urban Nights',
    'Pastel Dreams',
    'Vibrant Energy',
    'Soft Harmony',
    'Bold Statement',
    'Natural Earth',
    'Gradient Flow',
    'Warm Embrace',
    'Cool Breeze',
  ];

  static ColorPalette generateRandomPalette() {
    final List<Color> colors = [];
    final baseHue = _random.nextDouble() * 360;
    
    for (int i = 0; i < 5; i++) {
      colors.add(_generateHarmoniousColor(baseHue, i));
    }
    
    return ColorPalette(
      name: _paletteNames[_random.nextInt(_paletteNames.length)],
      colors: colors,
    );
  }

  static Color _generateHarmoniousColor(double baseHue, int index) {
    double hue = (baseHue + (index * 30)) % 360;
    double saturation = 0.6 + (_random.nextDouble() * 0.4);
    double lightness = 0.4 + (_random.nextDouble() * 0.4);
    
    return HSLColor.fromAHSL(1.0, hue, saturation, lightness).toColor();
  }

  static String colorToHex(Color color) {
    return '#${color.value.toRadixString(16).substring(2).toUpperCase()}';
  }

  static String colorToRGB(Color color) {
    return 'rgb(${color.red}, ${color.green}, ${color.blue})';
  }

  static String colorToHSL(Color color) {
    HSLColor hslColor = HSLColor.fromColor(color);
    return 'hsl(${hslColor.hue.round()}, ${(hslColor.saturation * 100).round()}%, ${(hslColor.lightness * 100).round()}%)';
  }

  static Color lightenColor(Color color, double amount) {
    HSLColor hslColor = HSLColor.fromColor(color);
    return hslColor.withLightness(
      (hslColor.lightness + amount).clamp(0.0, 1.0)
    ).toColor();
  }

  static Color darkenColor(Color color, double amount) {
    HSLColor hslColor = HSLColor.fromColor(color);
    return hslColor.withLightness(
      (hslColor.lightness - amount).clamp(0.0, 1.0)
    ).toColor();
  }

  static bool isLightColor(Color color) {
    return color.computeLuminance() > 0.5;
  }
}
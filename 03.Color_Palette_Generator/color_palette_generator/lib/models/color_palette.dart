import 'package:flutter/material.dart';

class ColorPalette {
  final String name;
  final List<Color> colors;
  final DateTime createdAt;

  ColorPalette({
    required this.name,
    required this.colors,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'colors': colors.map((color) => color.value).toList(),
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory ColorPalette.fromJson(Map<String, dynamic> json) {
    return ColorPalette(
      name: json['name'],
      colors: (json['colors'] as List)
          .map((colorValue) => Color(colorValue))
          .toList(),
      createdAt: DateTime.parse(json['createdAt']),
    );
  }
}
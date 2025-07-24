import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import '../models/color_palette.dart';
import 'color_card.dart';

class PaletteGenerator extends StatelessWidget {
  final ColorPalette palette;
  final VoidCallback onDelete;

  const PaletteGenerator({
    super.key,
    required this.palette,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  palette.name,
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.share, size: 20),
                    onPressed: () => _sharePalette(context),
                    color: Colors.grey[600],
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete, size: 20),
                    onPressed: onDelete,
                    color: Colors.red[400],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: palette.colors.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    right: index < palette.colors.length - 1 ? 12 : 0,
                  ),
                  child: ColorCard(
                    color: palette.colors[index],
                    width: 80,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _sharePalette(BuildContext context) {
    String colorCodes = palette.colors
        .map((color) => '#${color.value.toRadixString(16).substring(2).toUpperCase()}')
        .join(', ');
    
    Share.share(
      'Check out this beautiful color palette: ${palette.name}\n\nColors: $colorCodes',
      subject: palette.name,
    );
  }
}
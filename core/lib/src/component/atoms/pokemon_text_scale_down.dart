import 'package:flutter/material.dart';

class PokemonTextScaleDown extends StatelessWidget {
  const PokemonTextScaleDown(
    this.text, {
    super.key,
    this.maxLines = 1,
    this.style,
  });

  final String text;
  final int maxLines;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        text,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: style,
      ),
    );
  }
}

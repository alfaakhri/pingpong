import 'package:flutter/material.dart';

import 'pokemon_text.dart';

class PokemonTextRich extends StatelessWidget {
  const PokemonTextRich.displayLarge({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = PokemonTextTheme.displayLarge;

  const PokemonTextRich.displayMedium({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = PokemonTextTheme.displayMedium;
  const PokemonTextRich.displaySmall({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = PokemonTextTheme.displaySmall;
  const PokemonTextRich.headlineLarge({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = PokemonTextTheme.headlineLarge;
  const PokemonTextRich.headlineMedium({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = PokemonTextTheme.headlineMedium;
  const PokemonTextRich.headlineSmall({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = PokemonTextTheme.headlineSmall;
  const PokemonTextRich.titleLarge({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = PokemonTextTheme.titleLarge;
  const PokemonTextRich.titleMedium({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = PokemonTextTheme.titleMedium;
  const PokemonTextRich.titleSmall({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = PokemonTextTheme.titleSmall;
  const PokemonTextRich.labelLarge({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = PokemonTextTheme.labelLarge;
  const PokemonTextRich.labelMedium({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = PokemonTextTheme.labelMedium;
  const PokemonTextRich.labelSmall({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = PokemonTextTheme.labelSmall;
  const PokemonTextRich.bodyLarge({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = PokemonTextTheme.bodyLarge;
  const PokemonTextRich.bodyMedium({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = PokemonTextTheme.bodyMedium;
  const PokemonTextRich.bodySmall({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = PokemonTextTheme.bodySmall;

  final String? text;
  final List<TextSpan> children;
  final TextStyle? style;
  final PokemonTextTheme textTheme;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final Color? color;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(text: text, children: children),
      style: textTheme.textStyle
          .copyWith(color: color, fontWeight: fontWeight)
          .merge(style),
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
    );
  }
}

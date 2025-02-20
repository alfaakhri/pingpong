import 'package:core/src/themes/pokemon_colors/pokemon_colors.dart';
import 'package:flutter/material.dart';

import 'pokemon_theme.dart';

final class PokemonThemeLight extends PokemonTheme {
  PokemonThemeLight() : super('light');

  @override
  PokemonColor get color => PokemonColorLight();

  @override
  ThemeData get rawThemeData => ThemeData.light();

  @override
  ColorScheme get colorScheme => ColorScheme.light(
        primary: color.primary,
        error: color.error,
      );
}

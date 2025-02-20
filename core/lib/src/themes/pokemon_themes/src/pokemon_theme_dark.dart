import 'package:core/src/themes/pokemon_colors/pokemon_colors.dart';
import 'package:flutter/material.dart';

import 'pokemon_theme.dart';

final class PokemonThemeDark extends PokemonTheme {
  PokemonThemeDark() : super('dark');

  @override
  PokemonColor get color => PokemonColorDark();

  @override
  ThemeData get rawThemeData => ThemeData.dark();

  @override
  ColorScheme get colorScheme => ColorScheme.dark(
        primary: color.primary,
        error: color.error,
      );
}

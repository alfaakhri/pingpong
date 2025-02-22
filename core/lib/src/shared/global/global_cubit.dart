import 'package:core/src/themes/pokemon_themes/pokemon_themes.dart';
import 'package:dependency_manager/dependency_manager.dart';
import 'package:flutter/material.dart';
import 'package:morpheme_library/morpheme_library.dart';

part 'global_state.dart';

extension GlobalCubitExtension on BuildContext {
  Locale get selectedLocale =>
      select((GlobalCubit element) => element.state.locale);
  PokemonTheme get selectedTheme =>
      select((GlobalCubit element) => element.state.theme);

  void changeLocale(Locale locale) => read<GlobalCubit>().changeLocale(locale);
  void changeTheme(PokemonTheme theme) =>
      read<GlobalCubit>().changeTheme(theme);
}

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit()
      : super(GlobalState(
          locale: const Locale('en'),
          theme: PokemonThemeLight(),
        ));

  void changeLocale(Locale locale) => emit(state.copyWith(locale: locale));
  void changeTheme(PokemonTheme theme) => emit(state.copyWith(theme: theme));
}

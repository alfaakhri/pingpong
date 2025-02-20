import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../cubit/home_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with MorphemeStatePage<HomePage, HomeCubit> {
  @override
  HomeCubit setCubit() => locator<HomeCubit>();

  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<HomeCubit>().onAddPressed(context),
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              context.selectedTheme == PokemonThemeLight()
                  ? PokemonImages.logoLight
                  : PokemonImages.logoDark,
              width: context.widthPercentage(50),
            ),
            const PokemonSpacing.vertical24(),
            PokemonText.titleLarge(context.s.awesome),
            const PokemonSpacing.vertical16(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PokemonText.bodyMedium(context.s.language),
                const PokemonSpacing.horizontal16(),
                DropdownButton<Locale>(
                  isDense: true,
                  value: context.selectedLocale,
                  items: const [
                    DropdownMenuItem(
                      value: Locale('en'),
                      child: Text('English'),
                    ),
                    DropdownMenuItem(
                      value: Locale('id'),
                      child: Text('Indonesia'),
                    ),
                  ],
                  onChanged: (value) {
                    if (value != null) context.changeLocale(value);
                  },
                ),
              ],
            ),
            const PokemonSpacing.vertical16(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PokemonText.bodyMedium(context.s.theme),
                const PokemonSpacing.horizontal16(),
                DropdownButton<PokemonTheme>(
                  isDense: true,
                  value: context.selectedTheme,
                  items: [
                    DropdownMenuItem(
                      value: PokemonThemeLight(),
                      child: const Text('Ligth'),
                    ),
                    DropdownMenuItem(
                      value: PokemonThemeDark(),
                      child: const Text('Dark'),
                    ),
                  ],
                  onChanged: (value) {
                    if (value != null) context.changeTheme(value);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PokemonSpacing extends StatelessWidget {
  const PokemonSpacing.vertical({
    super.key,
    required this.size,
  }) : axis = Axis.vertical;
  const PokemonSpacing.vertical4({super.key})
      : size = 4,
        axis = Axis.vertical;
  const PokemonSpacing.vertical8({super.key})
      : size = 8,
        axis = Axis.vertical;
  const PokemonSpacing.vertical12({super.key})
      : size = 12,
        axis = Axis.vertical;
  const PokemonSpacing.vertical16({super.key})
      : size = 16,
        axis = Axis.vertical;
  const PokemonSpacing.vertical20({super.key})
      : size = 20,
        axis = Axis.vertical;
  const PokemonSpacing.vertical24({super.key})
      : size = 24,
        axis = Axis.vertical;
  const PokemonSpacing.vertical28({super.key})
      : size = 28,
        axis = Axis.vertical;
  const PokemonSpacing.vertical32({super.key})
      : size = 32,
        axis = Axis.vertical;
  const PokemonSpacing.vertical36({super.key})
      : size = 36,
        axis = Axis.vertical;
  const PokemonSpacing.vertical40({super.key})
      : size = 40,
        axis = Axis.vertical;
  const PokemonSpacing.vertical44({super.key})
      : size = 44,
        axis = Axis.vertical;
  const PokemonSpacing.vertical48({super.key})
      : size = 48,
        axis = Axis.vertical;
  const PokemonSpacing.vertical52({super.key})
      : size = 52,
        axis = Axis.vertical;
  const PokemonSpacing.vertical56({super.key})
      : size = 56,
        axis = Axis.vertical;
  const PokemonSpacing.vertical60({super.key})
      : size = 60,
        axis = Axis.vertical;
  const PokemonSpacing.vertical64({super.key})
      : size = 64,
        axis = Axis.vertical;
  const PokemonSpacing.vertical68({super.key})
      : size = 68,
        axis = Axis.vertical;
  const PokemonSpacing.vertical72({super.key})
      : size = 72,
        axis = Axis.vertical;
  const PokemonSpacing.vertical76({super.key})
      : size = 76,
        axis = Axis.vertical;
  const PokemonSpacing.vertical80({super.key})
      : size = 80,
        axis = Axis.vertical;

  const PokemonSpacing.horizontal({
    super.key,
    required this.size,
  }) : axis = Axis.horizontal;
  const PokemonSpacing.horizontal4({super.key})
      : size = 4,
        axis = Axis.horizontal;
  const PokemonSpacing.horizontal8({super.key})
      : size = 8,
        axis = Axis.horizontal;
  const PokemonSpacing.horizontal12({super.key})
      : size = 12,
        axis = Axis.horizontal;
  const PokemonSpacing.horizontal16({super.key})
      : size = 16,
        axis = Axis.horizontal;
  const PokemonSpacing.horizontal20({super.key})
      : size = 20,
        axis = Axis.horizontal;
  const PokemonSpacing.horizontal24({super.key})
      : size = 24,
        axis = Axis.horizontal;
  const PokemonSpacing.horizontal28({super.key})
      : size = 28,
        axis = Axis.horizontal;
  const PokemonSpacing.horizontal32({super.key})
      : size = 32,
        axis = Axis.horizontal;
  const PokemonSpacing.horizontal36({super.key})
      : size = 36,
        axis = Axis.horizontal;
  const PokemonSpacing.horizontal40({super.key})
      : size = 40,
        axis = Axis.horizontal;
  const PokemonSpacing.horizontal44({super.key})
      : size = 44,
        axis = Axis.horizontal;
  const PokemonSpacing.horizontal48({super.key})
      : size = 48,
        axis = Axis.horizontal;
  const PokemonSpacing.horizontal52({super.key})
      : size = 52,
        axis = Axis.horizontal;
  const PokemonSpacing.horizontal56({super.key})
      : size = 56,
        axis = Axis.horizontal;
  const PokemonSpacing.horizontal60({super.key})
      : size = 60,
        axis = Axis.horizontal;
  const PokemonSpacing.horizontal64({super.key})
      : size = 64,
        axis = Axis.horizontal;
  const PokemonSpacing.horizontal68({super.key})
      : size = 68,
        axis = Axis.horizontal;
  const PokemonSpacing.horizontal72({super.key})
      : size = 72,
        axis = Axis.horizontal;
  const PokemonSpacing.horizontal76({super.key})
      : size = 76,
        axis = Axis.horizontal;
  const PokemonSpacing.horizontal80({super.key})
      : size = 80,
        axis = Axis.horizontal;

  final double size;
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    return axis == Axis.horizontal
        ? SizedBox(width: size)
        : SizedBox(height: size);
  }
}

import 'package:flutter/material.dart';

class PokemonSliverSpacing extends StatelessWidget {
  const PokemonSliverSpacing.vertical({
    super.key,
    required this.size,
  }) : axis = Axis.vertical;
  const PokemonSliverSpacing.vertical4({super.key})
      : size = 4,
        axis = Axis.vertical;
  const PokemonSliverSpacing.vertical8({super.key})
      : size = 8,
        axis = Axis.vertical;
  const PokemonSliverSpacing.vertical12({super.key})
      : size = 12,
        axis = Axis.vertical;
  const PokemonSliverSpacing.vertical16({super.key})
      : size = 16,
        axis = Axis.vertical;
  const PokemonSliverSpacing.vertical20({super.key})
      : size = 20,
        axis = Axis.vertical;
  const PokemonSliverSpacing.vertical24({super.key})
      : size = 24,
        axis = Axis.vertical;
  const PokemonSliverSpacing.vertical28({super.key})
      : size = 28,
        axis = Axis.vertical;
  const PokemonSliverSpacing.vertical32({super.key})
      : size = 32,
        axis = Axis.vertical;
  const PokemonSliverSpacing.vertical36({super.key})
      : size = 36,
        axis = Axis.vertical;
  const PokemonSliverSpacing.vertical40({super.key})
      : size = 40,
        axis = Axis.vertical;
  const PokemonSliverSpacing.vertical44({super.key})
      : size = 44,
        axis = Axis.vertical;
  const PokemonSliverSpacing.vertical48({super.key})
      : size = 48,
        axis = Axis.vertical;
  const PokemonSliverSpacing.vertical52({super.key})
      : size = 52,
        axis = Axis.vertical;
  const PokemonSliverSpacing.vertical56({super.key})
      : size = 56,
        axis = Axis.vertical;
  const PokemonSliverSpacing.vertical60({super.key})
      : size = 60,
        axis = Axis.vertical;
  const PokemonSliverSpacing.vertical64({super.key})
      : size = 64,
        axis = Axis.vertical;
  const PokemonSliverSpacing.vertical68({super.key})
      : size = 68,
        axis = Axis.vertical;
  const PokemonSliverSpacing.vertical72({super.key})
      : size = 72,
        axis = Axis.vertical;
  const PokemonSliverSpacing.vertical76({super.key})
      : size = 76,
        axis = Axis.vertical;
  const PokemonSliverSpacing.vertical80({super.key})
      : size = 80,
        axis = Axis.vertical;

  const PokemonSliverSpacing.horizontal({
    super.key,
    required this.size,
  }) : axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal4({super.key})
      : size = 4,
        axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal8({super.key})
      : size = 8,
        axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal12({super.key})
      : size = 12,
        axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal16({super.key})
      : size = 16,
        axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal20({super.key})
      : size = 20,
        axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal24({super.key})
      : size = 24,
        axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal28({super.key})
      : size = 28,
        axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal32({super.key})
      : size = 32,
        axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal36({super.key})
      : size = 36,
        axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal40({super.key})
      : size = 40,
        axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal44({super.key})
      : size = 44,
        axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal48({super.key})
      : size = 48,
        axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal52({super.key})
      : size = 52,
        axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal56({super.key})
      : size = 56,
        axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal60({super.key})
      : size = 60,
        axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal64({super.key})
      : size = 64,
        axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal68({super.key})
      : size = 68,
        axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal72({super.key})
      : size = 72,
        axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal76({super.key})
      : size = 76,
        axis = Axis.horizontal;
  const PokemonSliverSpacing.horizontal80({super.key})
      : size = 80,
        axis = Axis.horizontal;

  final double size;
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    return axis == Axis.horizontal
        ? SliverToBoxAdapter(child: SizedBox(width: size))
        : SliverToBoxAdapter(child: SizedBox(height: size));
  }
}

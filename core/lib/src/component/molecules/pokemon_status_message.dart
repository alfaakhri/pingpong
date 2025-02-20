import 'package:core/src/constants/constants.dart';
import 'package:core/src/extensions/extensions.dart';
import 'package:core/src/themes/pokemon_colors/pokemon_colors.dart';
import 'package:flutter/material.dart';

import '../atoms/pokemon_spacing.dart';

class PokemonStatusMessage extends StatelessWidget {
  PokemonStatusMessage.info({
    super.key,
    required BuildContext context,
    required this.text,
  })  : backgroundColor = context.color.bgInfo,
        color = context.color.info,
        iconData = Icons.info_outline;

  PokemonStatusMessage.success({
    super.key,
    required BuildContext context,
    required this.text,
  })  : backgroundColor = context.color.bgSuccess,
        color = context.color.success,
        iconData = Icons.check_circle_outline;

  PokemonStatusMessage.error({
    super.key,
    required BuildContext context,
    required this.text,
  })  : backgroundColor = context.color.bgError,
        color = context.color.error,
        iconData = Icons.cancel_outlined;

  PokemonStatusMessage.warning({
    super.key,
    required BuildContext context,
    required this.text,
  })  : backgroundColor = context.color.bgWarning,
        color = context.color.warning,
        iconData = Icons.warning_amber;

  final String text;
  final Color backgroundColor;
  final Color color;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: ConstantSizes.s16,
        vertical: ConstantSizes.s8,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(ConstantSizes.s8),
      ),
      child: Row(
        children: [
          Icon(iconData, size: ConstantSizes.s16, color: color),
          const PokemonSpacing.horizontal8(),
          Expanded(
            child: Text(
              text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.bodySmall?.copyWith(color: color),
            ),
          ),
        ],
      ),
    );
  }
}

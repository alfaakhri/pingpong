import 'package:core/src/constants/constants.dart';
import 'package:core/src/themes/pokemon_colors/pokemon_colors.dart';
import 'package:flutter/material.dart';

import '../../../atoms/atoms.dart';
import 'icon_position.dart';
import 'type_button.dart';

class PokemonButton extends StatelessWidget {
  const PokemonButton.elevated({
    super.key,
    required this.text,
    required this.onPressed,
    this.isExpand = true,
    this.style,
    this.textStyle,
    this.icon,
    this.iconPosition = IconPosition.start,
    this.isLoading = false,
  }) : _type = TypeButton.elevated;
  const PokemonButton.outlined({
    super.key,
    required this.text,
    required this.onPressed,
    this.isExpand = true,
    this.style,
    this.textStyle,
    this.icon,
    this.iconPosition = IconPosition.start,
    this.isLoading = false,
  }) : _type = TypeButton.outlined;
  const PokemonButton.text({
    super.key,
    required this.text,
    required this.onPressed,
    this.isExpand = true,
    this.style,
    this.textStyle,
    this.icon,
    this.iconPosition = IconPosition.start,
    this.isLoading = false,
  }) : _type = TypeButton.text;

  final TypeButton _type;

  /// onPressed function should be passed in as a required field.
  final GestureTapCallback onPressed;

  /// overrides the default button text
  final ButtonStyle? style;

  /// overrides the default text style
  final TextStyle? textStyle;

  /// text for button
  final String text;

  /// icon for button
  final Widget? icon;

  /// position icon in start or end, default IconPosition.start
  final IconPosition iconPosition;

  /// expand size button to infinity
  final bool isExpand;

  /// bool show loading
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isExpand ? double.infinity : null,
      height: ConstantSizes.heightButton,
      child: Builder(
        builder: (context) {
          switch (_type) {
            case TypeButton.elevated:
              if (icon != null) {
                return Directionality(
                  textDirection: iconPosition == IconPosition.start
                      ? TextDirection.ltr
                      : TextDirection.rtl,
                  child: ElevatedButton.icon(
                    onPressed: isLoading ? null : onPressed,
                    style: style,
                    label: isLoading
                        ? const SizedBox()
                        : PokemonTextScaleDown(text, style: textStyle),
                    icon: isLoading
                        ? PokemonCircularLoading(
                            size: 24, color: context.color.primary)
                        : icon!,
                  ),
                );
              }
              return ElevatedButton(
                onPressed: isLoading ? null : onPressed,
                style: style,
                child: isLoading
                    ? PokemonCircularLoading(
                        size: 24, color: context.color.primary)
                    : PokemonTextScaleDown(text, style: textStyle),
              );
            case TypeButton.outlined:
              if (icon != null) {
                return Directionality(
                  textDirection: iconPosition == IconPosition.start
                      ? TextDirection.ltr
                      : TextDirection.rtl,
                  child: OutlinedButton.icon(
                    onPressed: isLoading ? null : onPressed,
                    style: style,
                    label: isLoading
                        ? const SizedBox()
                        : PokemonTextScaleDown(text, style: textStyle),
                    icon: isLoading
                        ? PokemonCircularLoading(
                            size: 24, color: context.color.primary)
                        : icon!,
                  ),
                );
              }
              return OutlinedButton(
                onPressed: isLoading ? null : onPressed,
                style: style,
                child: isLoading
                    ? PokemonCircularLoading(
                        size: 24, color: context.color.primary)
                    : PokemonTextScaleDown(text, style: textStyle),
              );
            default:
              if (icon != null) {
                return Directionality(
                  textDirection: iconPosition == IconPosition.start
                      ? TextDirection.ltr
                      : TextDirection.rtl,
                  child: TextButton.icon(
                    onPressed: isLoading ? null : onPressed,
                    style: style,
                    label: isLoading
                        ? const SizedBox()
                        : PokemonTextScaleDown(text, style: textStyle),
                    icon: isLoading
                        ? PokemonCircularLoading(
                            size: 24, color: context.color.primary)
                        : icon!,
                  ),
                );
              }
              return TextButton(
                onPressed: isLoading ? null : onPressed,
                style: style,
                child: isLoading
                    ? PokemonCircularLoading(
                        size: 24, color: context.color.primary)
                    : PokemonTextScaleDown(text, style: textStyle),
              );
          }
        },
      ),
    );
  }
}

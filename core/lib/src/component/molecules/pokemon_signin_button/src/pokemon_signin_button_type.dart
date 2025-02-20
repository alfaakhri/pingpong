import 'package:assets/assets.dart';
import 'package:flutter/material.dart';

abstract class PokemonSigninButtonType {
  PokemonSigninButtonType({
    required this.pathAsset,
    required this.color,
    required this.textColor,
    required this.text,
  });
  final String pathAsset;
  final Color color;
  final Color textColor;
  final String text;
}

class PokemonSigninTypeGoogle extends PokemonSigninButtonType {
  PokemonSigninTypeGoogle()
      : super(
          pathAsset: PokemonImages.google,
          color: Colors.white,
          textColor: Colors.black54,
          text: 'Continue with Google',
        );
}

class PokemonSigninTypeFacebook extends PokemonSigninButtonType {
  PokemonSigninTypeFacebook()
      : super(
          pathAsset: PokemonImages.facebook,
          color: const Color(0xFF1877F2),
          textColor: Colors.white,
          text: 'Continue with Facebook',
        );
}

class PokemonSigninTypeApple extends PokemonSigninButtonType {
  PokemonSigninTypeApple()
      : super(
          pathAsset: PokemonImages.apple,
          color: Colors.black,
          textColor: Colors.white,
          text: 'Continue with Apple',
        );
}

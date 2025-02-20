import 'package:auth/shared/helper/validator_value_helper.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../bloc/register/register_bloc.dart';
import '../cubit/register_cubit.dart';

class SignUpWithEmail extends StatelessWidget {
  const SignUpWithEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final watchRegisterState = context.watch<RegisterBloc>().state;

    final emailKey =
        context.select((RegisterCubit element) => element.emailKey);
    final passwordKey =
        context.select((RegisterCubit element) => element.passwordKey);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PokemonTextField(
          key: emailKey,
          title: context.s.email,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(hintText: context.s.yourEmail),
          validator: ValidatorValueHelper.validatorEmail,
          textInputAction: TextInputAction.next,
        ),
        const PokemonSpacing.vertical16(),
        PokemonTextField(
          key: passwordKey,
          isPassword: true,
          title: context.s.password,
          decoration: const InputDecoration(hintText: '******'),
          validator: ValidatorValueHelper.validatorPassword,
        ),
        PokemonButton.text(
          isExpand: false,
          text: context.s.accountDemo,
          onPressed: () =>
              context.read<RegisterCubit>().onAccountDemoPressed(context),
        ),
        const PokemonSpacing.vertical16(),
        PokemonButton.elevated(
          key: const ValueKey('buttonSignUpWithEmail'),
          isLoading: watchRegisterState is RegisterLoading,
          text: context.s.signUpWithEmail,
          onPressed: () =>
              context.read<RegisterCubit>().onSignUpWithEmailPressed(context),
        ),
      ],
    );
  }
}

import 'package:auth/login/presentation/cubit/login_cubit.dart';
import 'package:auth/shared/helper/validator_value_helper.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../bloc/login/login_bloc.dart';

class LoginWithEmail extends StatelessWidget {
  const LoginWithEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final watchLoginState = context.watch<LoginBloc>().state;

    final emailKey = context.select((LoginCubit element) => element.emailKey);
    final passwordKey =
        context.select((LoginCubit element) => element.passwordKey);

    return Column(
      children: [
        PokemonTextField(
          key: emailKey,
          textfieldKey: const ValueKey(ConstantDataTesId.inputEmail),
          title: context.s.email,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(hintText: context.s.yourEmail),
          validator: ValidatorValueHelper.validatorEmail,
          textInputAction: TextInputAction.next,
        ),
        const PokemonSpacing.vertical16(),
        PokemonTextField(
          key: passwordKey,
          textfieldKey: const ValueKey(ConstantDataTesId.inputPassword),
          isPassword: true,
          title: context.s.password,
          decoration: const InputDecoration(hintText: '******'),
          validator: ValidatorValueHelper.validatorPassword,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PokemonButton.text(
              key: const ValueKey(ConstantDataTesId.buttonAccountDemo),
              isExpand: false,
              text: context.s.accountDemo,
              onPressed: () =>
                  context.read<LoginCubit>().onAccountDemoPressed(context),
            ),
            PokemonButton.text(
              key: const ValueKey(ConstantDataTesId.buttonForgotPassword),
              isExpand: false,
              text: '${context.s.forgotPassword}?',
              onPressed: () =>
                  context.read<LoginCubit>().onForgotPasswordPressed(context),
            ),
          ],
        ),
        const PokemonSpacing.vertical16(),
        PokemonButton.elevated(
          key: const ValueKey(ConstantDataTesId.buttonLoginWithEmail),
          isLoading: watchLoginState is LoginLoading,
          text: context.s.loginWithEmail,
          onPressed: () =>
              context.read<LoginCubit>().onLoginWithEmailPressed(context),
        ),
      ],
    );
  }
}

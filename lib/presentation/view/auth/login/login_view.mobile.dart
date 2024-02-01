import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:vault_pass/common/pub.dev/utils/palette.dart';
import 'package:vault_pass/common/pub.dev/utils/style.dart';
import 'package:vault_pass/presentation/view/auth/register/register_view.dart';
import 'package:vault_pass/presentation/widgets/btns/reset_back_btn.dart';
import 'package:vault_pass/presentation/widgets/text_button_widget.dart';

import 'login_model.dart';

class LoginViewMobile extends ViewModelWidget<LoginViewModel> {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginViewMobile(this.emailController, this.passwordController, {super.key});

  @override
  Widget build(BuildContext context, LoginViewModel viewModel) {
    return Scaffold(
      body: ResetBackBtnWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          child: Form(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Welcome back.",
                                  style: headline34,
                                ),
                                const Text(
                                  "You've been missed.",
                                  style: bodyText15_grey,
                                ),
                                const SizedBox(height: 30),

                                //! #### EMAIL ####
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: TextFormField(
                                    key: ValueKey("loginKey"),
                                    style: bodyText15_grey.copyWith(color: Colors.white),
                                    textInputAction: TextInputAction.next,
                                    autocorrect: false,
                                    decoration: inputDecoration("Email"),
                                    controller: emailController,
                                    //initialValue: email ?? "email"),
                                  ),
                                ),
                                const SizedBox(height: 8),

                                //! #### PASSWORD ####
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: TextFormField(
                                    key: ValueKey("loginKeypassword"),
                                    style: bodyText15_grey.copyWith(color: Colors.white),
                                    textInputAction: TextInputAction.next,
                                    autocorrect: false,
                                    decoration: inputDecoration("Password"),
                                    controller: passwordController,
                                  ),
                                ),

                                //! REGISTER BUTTON (GO BACK)
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text("Don't have an account?", style: bodyText15_grey),
                                    TextButton(
                                      onPressed: () {
                                        viewModel.navigateToRegisterView();
                                      },
                                      child: const Text(
                                        'Register',
                                        style: bodyText15_white,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),

                                //! LOGIN BUTTON
                                TextButtonWidget(
                                  buttonName: 'Login',
                                  onTap: () {
                                    viewModel.onAccept();
                                  },
                                  bgColor: whiteFull,
                                  textColor: blackFull,
                                ),

                                ///!! isLoading
                                if (viewModel.isBusy) ...[
                                  const SizedBox(height: 8),
                                  const LinearProgressIndicator(),
                                ],
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

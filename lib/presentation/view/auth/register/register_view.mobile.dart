import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:vault_pass/presentation/utils/palette.dart';
import 'package:vault_pass/presentation/utils/style.dart';
import 'package:vault_pass/presentation/view/auth/register/register_model.dart';
import 'package:vault_pass/presentation/view/auth/register/register_view.dart';
import 'package:vault_pass/presentation/widgets/btns/reset_back_btn.dart';
import 'package:vault_pass/presentation/widgets/text_button_widget.dart';

class RegisterViewMobile extends ViewModelWidget<RegisterViewModel> {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController retypePasswordController;

  const RegisterViewMobile(this.firstNameController, this.lastNameController, this.emailController,
      this.passwordController, this.retypePasswordController,
      {super.key});

  @override
  Widget build(BuildContext context, viewModel) {
    return ResetBackBtnWidget(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        Flexible(
                          child: Form(
                            ///TODO: fix this
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //! TITLE
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "Register",
                                      style: headline34,
                                    ),
                                    const SizedBox(
                                      width: 110,
                                    ),
                                    IconButton(
                                      onPressed: () => showDialog(
                                        context: context,
                                        builder: (ctx) => AlertDialog(
                                          title: const Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(FontAwesomeIcons.exclamation,
                                                  color: Colors.redAccent),
                                              Text("Important"),
                                            ],
                                          ),
                                          content: const SizedBox(
                                            width: 50,
                                            height: 40,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "     You can upload your previously exported database here.",
                                                  style: bodyText10_black,
                                                ),
                                                Text(
                                                  "     NOTE: Once imported, your current database will be replaced with the new one and it cannot be recovered.",
                                                  style: bodyText10_black,
                                                ),
                                              ],
                                            ),
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () async {
                                                // WidgetsBinding.instance
                                                //     .addPostFrameCallback((_) {
                                                //   // final bloc = context.read<ImporterBloc>();
                                                //   // bloc.add(const ImporterEvent.started());
                                                // });
                                                //viewModel.import();
                                              },
                                              child: Text("Import",
                                                  style: bodyText15(Palette.blackCard)),
                                            ),
                                            TextButton(
                                              //viewModel.opo()
                                              onPressed: () => Navigator.of(context).pop(),
                                              child: Text("Cancel",
                                                  style: bodyText15(Palette.blackCard)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      icon: const Icon(
                                        FontAwesomeIcons.fileImport,
                                        color: Palette.whiteSnow,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  key: Key("caKey"),
                                  "Create an account to get started.",
                                  style: bodyText15_grey,
                                ),
                                const SizedBox(height: 10),

                                //! FIRST NAME
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  child: TextFormField(
                                    style: bodyText15_grey.copyWith(color: Colors.white),
                                    textInputAction: TextInputAction.next,
                                    autocorrect: false,
                                    decoration: inputDecoration("First name"),
                                    controller: firstNameController,
                                    // validator:
                                    // onChanged:
                                  ),
                                ),

                                //! LAST NAME
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  child: TextFormField(
                                    style: bodyText15_grey.copyWith(color: Colors.white),
                                    textInputAction: TextInputAction.next,
                                    autocorrect: false,
                                    decoration: inputDecoration("Last name"),
                                    controller: lastNameController,
                                    // validator:
                                    // onChanged:
                                  ),
                                ),
                                const SizedBox(height: 8),

                                //! EMAIL
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  child: TextFormField(
                                    style: bodyText15_grey.copyWith(color: Colors.white),
                                    textInputAction: TextInputAction.next,
                                    autocorrect: false,
                                    decoration: inputDecoration("Email"),
                                    controller: emailController,
                                    // validator:
                                    // onChanged:
                                  ),
                                ),
                                const SizedBox(height: 8),

                                //! PASSWORD
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  child: TextFormField(
                                    style: bodyText15_grey.copyWith(color: Colors.white),
                                    textInputAction: TextInputAction.next,
                                    autocorrect: false,
                                    decoration: inputDecoration("Password"),
                                    controller: passwordController,
                                    // validator:
                                    // onChanged:
                                  ),
                                ),

                                //! RETYPE PASSWORD
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  child: TextFormField(
                                    style: bodyText15_grey.copyWith(color: Colors.white),
                                    textInputAction: TextInputAction.next,
                                    autocorrect: false,
                                    decoration: inputDecoration("Retype password"),
                                    controller: retypePasswordController,
                                    // validator:
                                    // onChanged:
                                  ),
                                ),

                                //# LOGIN BUTTON
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Already have an account?",
                                      style: bodyText15_grey,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        viewModel.navigateToLoginView();
                                      },
                                      child: const Text(
                                        'Sign In',
                                        style: bodyText15_white,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),

                                //! REGISTER BUTTON
                                TextButtonWidget(
                                  buttonName: 'Register',
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

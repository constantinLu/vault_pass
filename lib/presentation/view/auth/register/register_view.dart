import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:vault_pass/common/pub.dev/sizeup/sizeup.dart';
import 'package:vault_pass/common/pub.dev/utils/css.dart';
import 'package:vault_pass/common/pub.dev/utils/style.dart';
import 'package:vault_pass/presentation/view/auth/register/register_model.dart';
import 'package:vault_pass/presentation/view/auth/register/register_view.form.dart';
import 'package:vault_pass/presentation/view/auth/register/register_view.mobile.dart';


@FormView(
  fields: [
    FormTextField(name: "firstName"),
    FormTextField(name: "lastName"),
    FormTextField(name: "email"),
    FormTextField(name: "password"),
    FormTextField(name: "retypePassword"),
  ],
)
class RegisterView extends StackedView<RegisterViewModel> with $RegisterView {
  const RegisterView({super.key});

  @override
  Widget builder(BuildContext context, RegisterViewModel viewModel, Widget? child) {
    return Sizeup(
        builder: (BuildContext context, Orientation orientation, deviceType) => RegisterViewMobile(
            firstNameController,
            lastNameController,
            emailController,
            passwordController,
            retypePasswordController));
  }

  @override
  RegisterViewModel viewModelBuilder(BuildContext context) => RegisterViewModel();

  @override
  void onViewModelReady(RegisterViewModel viewModel) {
    syncFormWithViewModel(viewModel);
    viewModel.initializeForm();
  }
}

InputDecoration inputDecoration(String hitText) {
  return InputDecoration(
    contentPadding: const EdgeInsets.all(20),
    hintText: hitText,
    hintStyle: bodyText15_grey,
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.grey,
        width: 1,
      ),
      borderRadius: borderRadiusCircular,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
        width: 1,
      ),
      borderRadius: borderRadiusCircular,
    ),
  );
}

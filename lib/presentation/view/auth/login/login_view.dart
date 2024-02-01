import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:vault_pass/common/pub.dev/sizeup/sizeup.dart';
import 'package:vault_pass/presentation/view/auth/login/login_model.dart';
import 'package:vault_pass/presentation/view/auth/login/login_view.form.dart';
import 'package:vault_pass/presentation/view/auth/login/login_view.mobile.dart';

@FormView(
  fields: [
    FormTextField(name: "email"),
    FormTextField(name: "password"),
  ],
)
class LoginView extends StackedView<LoginViewModel> with $LoginView {
  const LoginView({super.key});

  @override
  Widget builder(BuildContext context, LoginViewModel viewModel, Widget? child) {
    return Sizeup(builder: (BuildContext context, Orientation orientation, deviceType) {
      return LoginViewMobile(emailController, passwordController);
    });
  }

  @override
  LoginViewModel viewModelBuilder(BuildContext context) => LoginViewModel();

  @override
  void onViewModelReady(LoginViewModel viewModel) {
    syncFormWithViewModel(viewModel);
    viewModel.initializeForm();
  }
}

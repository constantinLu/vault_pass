import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';
import 'package:vault_pass/presentation/view/auth/splash/slash_model.dart';

class SplashView extends StackedView<SplashViewModel> {
  const SplashView({super.key});

  @override
  Widget builder(BuildContext context, SplashViewModel viewModel, Widget? child) {
    return const Scaffold(body: Center(child: CircularProgressIndicator(backgroundColor: Colors.teal,)));
  }

  @override
  SplashViewModel viewModelBuilder(BuildContext context) => SplashViewModel();

  @override
  void onViewModelReady(SplashViewModel viewModel) =>
      SchedulerBinding.instance.addPostFrameCallback((timeStamp) => viewModel.checkAuth());
}

//   @override
//   AuthViewModel viewModelBuilder(BuildContext context) => AuthViewModel();
//
//   @override
//   Widget builder(BuildContext context, AuthViewModel viewModel, Widget? child) {
//     AuthType authType = viewModel.isAuthenticated();
//
//     if (authType == AuthType.UNAUTHENTICATED) {
//       return Container();
//     } else if (authType == AuthType.AUTHENTICATED) {
//       return Container(
//         child: Center(
//           child: Text(
//             "SOME_OTHER_CASE",
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       );
//     } else {
//       // Default case or additional conditions
//       return Container(
//         child: Center(
//           child: Text(
//             "AUTH",
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       );
//     }
//   }
// }

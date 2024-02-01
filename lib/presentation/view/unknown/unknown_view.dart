import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:vault_pass/common/package/sizeup.dart';

import 'unknown_model.dart';
import 'unknown_view.mobile.dart';

class UnknownView extends StackedView<UnknownViewModel> {
  const UnknownView({super.key});

  Widget builder(BuildContext context, UnknownViewModel viewModel, Widget? child) {
    return Sizeup(builder: (BuildContext context, Orientation orientation, deviceType) {
      return const UnknownViewMobile();
    });
  }

  @override
  UnknownViewModel viewModelBuilder(BuildContext context) => UnknownViewModel();
}

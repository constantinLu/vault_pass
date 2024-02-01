import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:vault_pass/common/pub.dev/utils/css.dart';
import 'package:vault_pass/presentation/view/home/home_model.dart';
import 'package:vault_pass/presentation/widgets/animations_widget.dart';

/// FLOATING ACTION BUTTON FAB!
class FabBtn extends ViewModelWidget<HomeViewModel> {
  const FabBtn({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return RotateWidget(
      degree: const Degree.flat(),
      child: FloatingActionButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(radiusCircular)),
          child: const Icon(Icons.add),
          onPressed: () => viewModel.processView()),
    );
  }
}

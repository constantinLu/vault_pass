import 'package:flutter/material.dart';
import 'package:raven/raven.dart';
import 'package:stacked/stacked.dart';
import 'package:vault_pass/presentation/utils/style.dart';

import 'unknown_model.dart';

class UnknownViewMobile extends ViewModelWidget<UnknownViewModel> {
  const UnknownViewMobile({super.key});

  @override
  Widget build(BuildContext context, UnknownViewModel viewModel) {
    ///back button goes to the prev view
    return Scaffold(
      backgroundColor: kcBlackFull,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ops! Wrong turn',
              style: bodyText(14, kcGreySpanish).copyWith(letterSpacing: 10.0, wordSpacing: 5.0),
            ),
            const SizedBox(height: 20),
            Text(
              '404',
              style: bodyText(15, kcGreySpanish).copyWith(letterSpacing: 20.0),
            ),
            const SizedBox(height: 20),
            Text(
              'PAGE NOT FOUND',
              style: bodyText(12, kcGreySpanish).copyWith(
                letterSpacing: 10.0,
                wordSpacing: 5.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:vault_pass/common/pub.dev/utils/butter.dart';
import 'package:vault_pass/common/pub.dev/utils/css.dart';
import 'package:vault_pass/common/pub.dev/utils/palette.dart';

import '../../common/pub.dev/sizeup/device_size.dart';

class IconCardWidget extends StatelessWidget {
  final List<TextButton> textButton;
  final int cardHeight;
  final Color? cardColor;

  IconCardWidget({required this.textButton, required this.cardHeight, this.cardColor}) {
    if (textButton.length > 1) {
      checkHeight(cardHeight, 25);
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = <Widget>[];
    textButton.forEach((button) {
      if (textButton.length > 1) {
        widgets.add(const SizedBox(
          height: 19,
        ));
      }
      widgets.add(button);
    });

    return SizedBox(
      width: double.infinity,
      height: heightPercentOf(cardHeight.toDouble(), context),
      child: Card(
        color: cardColor ?? Palette.blackCard2,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadiusCircular,
        ),
        elevation: 2,
        margin: const EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 8, 10, 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          ),
        ),
      ),
    );
  }
}

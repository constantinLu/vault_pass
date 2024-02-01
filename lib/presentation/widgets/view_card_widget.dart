import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:vault_pass/common/pub.dev/utils/butter.dart';
import 'package:vault_pass/common/pub.dev/utils/css.dart';
import 'package:vault_pass/common/pub.dev/utils/palette.dart';
import 'package:vault_pass/common/pub.dev/utils/style.dart';

import '../../common/pub.dev/sizeup/device_size.dart';

class ViewCardWidget extends StatelessWidget {
  final Map<String, String> textWidget;
  final Map<TextStyle, TextStyle>? textWidgetStyle;
  final int cardHeight;
  final Color? cardColor;

  ViewCardWidget({required this.textWidget, required this.cardHeight, this.textWidgetStyle, this.cardColor, super.key}) {
    if (textWidget.size > 1) {
      checkHeight(cardHeight, 25);
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> textWidgets = <Widget>[];
    textWidget.forEach((k, v) {
      if (textWidgetStyle == null) {
        textWidgets.add(Text(k, style: bodyText(12, Palette.greySpanish)));
        textWidgets.add(Text(v, style: bodyText(15, Palette.whiteSnow)));
      } else {
        textWidgets.add(Text(k, style: textWidgetStyle!.keys.first));
        textWidgets.add(Text(v, style: textWidgetStyle!.values.last));
      }
      if (textWidget.size > 1) {
        textWidgets.add(const SizedBox(
          height: 19,
        ));
      }
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
          padding: const EdgeInsets.fromLTRB(15, 15, 10, 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: textWidgets,
          ),
        ),
      ),
    );
  }
}

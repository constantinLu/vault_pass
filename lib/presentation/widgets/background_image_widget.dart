import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vault_pass/common/pub.dev/sizeup/device_size.dart';

class BackgroundImage extends StatelessWidget {
  final String illustration;

  const BackgroundImage(this.illustration, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.6,
      child: SvgPicture.asset(illustration,
          alignment: Alignment.center, width: widthPercentOf(30, context), height: heightPercentOf(30, context)),
    );
  }
}

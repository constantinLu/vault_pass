import 'package:flutter/cupertino.dart';
import 'package:vault_pass/common/pub.dev/utils/style.dart';

class TitleWidget extends StatelessWidget {
  final String value;

  const TitleWidget({required this.value});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        value,
        style: headerText_white(20),
      ),
    );
  }
}

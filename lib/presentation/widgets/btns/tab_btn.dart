import 'package:flutter/material.dart';
import 'package:vault_pass/presentation/core/device_size.dart';
import 'package:vault_pass/presentation/utils/css.dart';

class TabButton extends StatelessWidget {
  final bool checkIndex;
  final String recordName;

  const TabButton(this.checkIndex, this.recordName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.all(10),
      width: widthPercentOf(35, context),
      height: widthPercentOf(14, context),

      /// actual button design
      decoration: BoxDecoration(
        color: checkIndex ? Colors.white : Colors.white54,
        borderRadius: checkIndex ? borderRadiusCircular : BorderRadius.circular(13),
        border: checkIndex ? Border.all(color: Colors.black, width: 2) : null,
      ),
      child: Center(
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              recordName,
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../core/device_size.dart';
import '../utils/palette.dart';
import '../utils/style.dart';
import '../widgets/avatar_widget.dart';

class FavoriteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        ///# HEADER
        appBar: AppBar(
            leading: const BackButton(
              color: Palette.whiteSnow,
            ),
            backgroundColor: blackFull,
            title: const Center(
              child: Text("Favorites", style: bodyText15_white),
            ),
            actions: [
              Avatar(
                onTapDisabled: false,
              )
            ]),

        ///# BODY
        body: Container(
          margin: const EdgeInsets.only(top: 20),
          width: double.infinity,
          height: heightPercentOf(80, context),
          // child: state.records.isEmpty
          //     ? const Center(child: BackgroundImage(IMAGE_ACCOUNT))
          //     : RecordCards(state.records)),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:vault_pass/common/pub.dev/utils/palette.dart';
import 'package:vault_pass/common/pub.dev/utils/style.dart';

import '../widgets/title_widget.dart';
import '../widgets/view_card_widget.dart';

class NotificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //! AP SETTINGS TITLE
                    const TitleWidget(value: "Notifications"),
                    const Divider(height: 10, thickness: 1, color: Colors.white),
                    const SizedBox(height: 10),

                    //! NOTIFICATION TEXT
                    ViewCardWidget(
                      textWidget: const {"History Notifications": "All notification will appear here."},
                      textWidgetStyle: {bodyText(15, Palette.greySpanish): bodyText(12, Palette.whiteSnow)},
                      cardHeight: 16,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

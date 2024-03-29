import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vault_pass/common/pub.dev/utils/palette.dart';
import 'package:vault_pass/common/pub.dev/utils/style.dart';

import '../../widgets/avatar_widget.dart';
import '../../widgets/text_button_widget.dart';

@RoutePage()
class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const BackButton(
            color: Palette.whiteSnow,
          ),
          backgroundColor: blackFull,
          title: Center(child: Text("Asd")),
          // child: Text(
          //     "${state.getValueOrCrash(state.response)!.firstName.get()} "
          //     "${state.getValueOrCrash(state.response)!.lastName.get()}",
          //     style: bodyText15_white)),
          actions: [
            Avatar(
              onTapDisabled: true,
            )
          ]),
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
                    //! DONATE
                    const DonationButton(),

                    //! HELP BUTTON
                    TextButtonWidget(
                      buttonName: 'Help',
                      btnSize: BtnSize.large,
                      icon: Icons.help_outlined,
                      onTap: () {
                        //context.pushTo(const HelpSettingsView());
                      },
                      bgColor: Palette.blackCard,
                      textColor: Palette.whiteSnow,
                      bold: false,
                    ),

                    //! ACCOUNT SETTINGS
                    TextButtonWidget(
                      buttonName: 'Account',
                      btnSize: BtnSize.large,
                      icon: Icons.manage_accounts_sharp,
                      onTap: () {
                        //context.pushTo(const AccountSettingsView());
                      },
                      bgColor: Palette.blackCard,
                      textColor: Palette.whiteSnow,
                      bold: false,
                    ),

                    //! SECURITY
                    TextButtonWidget(
                      buttonName: 'Security',
                      btnSize: BtnSize.large,
                      icon: Icons.security,
                      onTap: () {
                        //context.pushTo(const SecuritySettingsView());
                      },
                      bgColor: Palette.blackCard,
                      textColor: Palette.whiteSnow,
                      bold: false,
                    ),

                    //! APP SETTINGS
                    TextButtonWidget(
                      buttonName: 'App Settings',
                      btnSize: BtnSize.large,
                      icon: Icons.settings_outlined,
                      onTap: () {
                        //context.pushTo(const AppSettingsView());
                      },
                      bgColor: Palette.blackCard,
                      textColor: Palette.whiteSnow,
                      bold: false,
                    ),

                    //! ABOUT US
                    TextButtonWidget(
                      buttonName: 'About Us',
                      btnSize: BtnSize.large,
                      icon: Icons.developer_mode_sharp,
                      onTap: () {
                        //context.pushTo(const AboutUsSettingsView());
                      },
                      bgColor: Palette.blackCard,
                      textColor: Palette.whiteSnow,
                      bold: false,
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

class DonationButton extends StatelessWidget {
  const DonationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 5, 12),
      child: ElevatedButton.icon(
        onPressed: () {
          //context.pushTo(const DonationView());
        },
        icon: const Icon(Icons.heart_broken, color: Palette.whiteCultured),
        label: const Text(
          "Donate",
          style: bodyText15_white_bold,
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Palette.blackCard2, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
      ),
    );
  }
}

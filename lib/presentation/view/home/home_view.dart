import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:vault_pass/presentation/view/home/home_model.dart';
import 'package:vault_pass/presentation/view/home/tab_widget.dart';
import 'package:vault_pass/presentation/widgets/btns/fab_btn.dart';
import 'package:vault_pass/presentation/widgets/btns/reset_back_btn.dart';

import '../../core/device_size.dart';
import '../../utils/css.dart';
import '../../utils/palette.dart';
import '../../utils/style.dart';
import '../../widgets/avatar_widget.dart';

class HomeView extends StackedView<HomeViewModel> {
  final String userId;

  const HomeView({super.key, @pathParam required this.userId});

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    //TODO: other way of writing
    // return ViewModelBuilder<HomeViewModel>.reactive(
    //   //onViewModelReady: ,
    //   viewModelBuilder: () => HomeViewModel(),
    //   builder: (BuildContext context, HomeViewModel model, Widget? child) {
    return ResetBackBtnWidget(
      child: Scaffold(
        /// HEADER
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          elevation: 0,
          leading: Transform.scale(
            scaleX: -1,
            //! LOGOUT BUTTON
            child: IconButton(
                tooltip: "Logout",
                onPressed: () => viewModel.navigateToLoginView(),
                icon: const Icon(
                  Icons.logout_sharp,
                  color: whiteFull,
                )),
          ),
          title: Center(child: Text(viewModel.welcomeMessage, style: bodyText15_white_bold)),
          actions: [
            Avatar(
              onTapDisabled: false,
            )
          ],
          toolbarHeight: heightPercentOf(8, context),
        ),

        /// BODY
        body: TabWidget(),

        /// FOOTER
        floatingActionButton: const FabBtn(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: AutomaticNotchedShape(const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              RoundedRectangleBorder(borderRadius: BorderRadius.all(radiusCircular))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    viewModel.navigateToFavoriteView();
                  },
                  icon: const Icon(Icons.favorite_border)),
              IconButton(
                  onPressed: () {
                    viewModel.updateAccount();
                  },
                  icon: Icon(viewModel.isPersonalAccountSelected() ? Icons.home : Icons.business_rounded)),
              IconButton(
                  onPressed: () {
                    //TODO: pop up window with ID
                    // NICE WINDOW.
                  },
                  icon: const Icon(Icons.badge_outlined)),
              IconButton(
                  onPressed: () {
                    viewModel.navigateToNotificationView();
                  },
                  icon: const Icon(Icons.notifications_none)),
            ],
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel(userId: userId);

  @override
  void onViewModelReady(HomeViewModel viewModel) {
    viewModel.initData();
  }
}

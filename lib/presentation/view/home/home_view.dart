import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:vault_pass/presentation/view/home/home_model.dart';
import 'package:vault_pass/presentation/view/home/tab_widget.dart';
import 'package:vault_pass/presentation/widgets/reset_back_btn_widget.dart';

import '../../core/device_size.dart';
import '../../utils/css.dart';
import '../../utils/palette.dart';
import '../../utils/style.dart';
import '../../widgets/animations_widget.dart';
import '../../widgets/avatar_widget.dart';
import '../records/records_cards.dart';

class HomeView extends StackedView<HomeViewModel> {
  final String userId;

  const HomeView({super.key, @pathParam required this.userId});

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    // return ViewModelBuilder<HomeViewModel>.reactive(
    //   //onViewModelReady: ,
    //   viewModelBuilder: () => HomeViewModel(),
    //   builder: (BuildContext context, HomeViewModel model, Widget? child) {
    return FutureBuilder<String>(
      future: viewModel.welcomeMessage(),
      builder: (context, snapshot) {
        // if (snapshot.connectionState == ConnectionState.waiting) {
        //   // Display a loading indicator while the Future is in progress
        //   return Center(
        //       //TODO: customize this
        //       child: Container(
        //           width: 200,
        //           height: 200,
        //           child: const CircularProgressIndicator(
        //             semanticsLabel: "ASD",
        //             backgroundColor: Colors.teal,
        //           )));
        // } else {
        return ResetBackBtnWidget(
          child: Scaffold(
            ///# HEADER
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
              title: Center(child: Text('${snapshot.data}', style: bodyText15_white_bold)),
              actions: [
                Avatar(
                  onTapDisabled: false,
                )
              ],
              toolbarHeight: heightPercentOf(8, context),
            ),

            ///# BODY
            body: Tabber(),

            ///# FOOTER
            floatingActionButton: const FabWidget(),
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
                        //TODO: pup up window with ID
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
      },
      //},
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel(userId: userId);
}

class Tabber extends ViewModelWidget<HomeViewModel> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Container(
      //TODO: FIX THIS
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.fromLTRB(5, 2, 5, 5),
      child: Column(
        children: [
          /// Tab BAR - column
          SizedBox(
            //TODO: FIX THIS
            height: 70,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: viewModel.recordTypes.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return GestureDetector(
                    onTap: () {
                      viewModel.updateCurrentIndex(index);
                      pageController.animateToPage(
                        viewModel.currentIndex,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.ease,
                      );
                    },
                    child: TabButton(
                      viewModel.currentIndex == index,
                      viewModel.recordNames[index],
                    ),
                  );
                }),
          ),

          /// BODY COLUMN
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: double.infinity,
            //TODO: FIX THIS
            height: 400,
            child: PageView.builder(
              itemCount: viewModel.recordTypes.length,
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return RecordCards(viewModel.provideRecords());
                // Text(
                //   "${viewModel.recordNames[viewModel.currentIndex]} Tab Content",
                // style: GoogleFonts.ubuntu(
                //     fontWeight: FontWeight.w500,
                //     fontSize: 30,
                //     color: Colors.deepPurpleAccent),
              },
            ),
          ),
        ],
      ),
    );
  }
}

/// FLOATING ACTION BUTTON FAB!
class FabWidget extends ViewModelWidget<HomeViewModel> {
  const FabWidget({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return RotateWidget(
      degree: const Degree.flat(),
      child: FloatingActionButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(radiusCircular)),
          child: const Icon(Icons.add),
          onPressed: () => viewModel.processView()),
    );
  }
}

//
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:vault_pass/presentation/view/home/home_model.dart';
import 'package:vault_pass/presentation/view/records/records_cards.dart';

import '../../widgets/background_image_widget.dart';
import '../../widgets/btns/tab_btn.dart';

class TabWidget extends ViewModelWidget<HomeViewModel> {
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
                /// CARDS
                return viewModel.checkRecords()
                    ? Center(child: BackgroundImage(viewModel.currentRecordImage))
                    : RecordCards(viewModel.provideRecords());
              },
            ),
          ),
        ],
      ),
    );
  }
}

void swiper(DragEndDetails details) {
  if (details.primaryVelocity! > 0) {
// User swiped Left
  } else if (details.primaryVelocity! < 0) {
// User swiped Right
  }
}

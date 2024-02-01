import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:vault_pass/application/assets.dart';
import 'package:vault_pass/domain/model/types.dart';
import 'package:vault_pass/presentation/view/home/home_model.dart';

import '../../core/device_size.dart';
import '../../utils/css.dart';
//
// class TabWidget extends ViewModelWidget<HomeViewModel> {
//   TabWidget(this.currentIndex);
//
//   final Map<String, String> _imageType = {
//     String.record: IMAGE_ACCOUNT,
//     String.address: IMAGE_ADDRESS,
//     String.card: IMAGE_CREDITCARD,
//     String.document: IMAGE_CREDITCARD
//   };
//
//   List<String> get recordTypes => _imageType.keys.map((type) => type).toList();
//
//   String imageTypes(index) => _imageType[recordTypes[index]]!;
//
//   int currentIndex = 0;
//
//   //check index helper
//   bool checkIndex({required int index}) => currentIndex == index;
//
//   @override
//   Widget build(BuildContext context, HomeViewModel homeModel) {
//     return Container(
//       width: double.infinity,
//       height: double.infinity,
//       margin: const EdgeInsets.fromLTRB(5, 2, 5, 5),
//       //TODO: AICI E O PROBLEMA DE RANDARE
//       child: Column(
//         children: <Widget>[
//           Row(
//             children: <Widget>[
//               Expanded(
//                 child: GestureDetector(
//                   onTap: () {},
//                   child: TabButton(checkIndex(index: 0), RecordType.record),
//                 ),
//               ),
//               Expanded(
//                 child: GestureDetector(
//                   onTap: () {
//                     currentIndex = 1;
//                   },
//                   child: TabButton(checkIndex(index: 1), String.address),
//                 ),
//               ),
//               Expanded(
//                 child: GestureDetector(
//                   onTap: () {
//                     currentIndex = 2;
//                   },
//                   child: TabButton(checkIndex(index: 2), String.card),
//                 ),
//               ),
//               Expanded(
//                 child: GestureDetector(
//                   onTap: () {
//                     currentIndex = 3;
//                   },
//                   child: TabButton(checkIndex(index: 3), String.document),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//               width: double.infinity,
//               height: heightPercentOf(63, context),
//               child: Center(child: BackgroundImage(imageTypes(currentIndex))))
//         ],
//       ),
//     );
//   }
// }
//
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

class BackgroundImage extends StatelessWidget {
  final String illustration;

  const BackgroundImage(this.illustration, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.6,
      child: SvgPicture.asset(illustration,
          alignment: Alignment.center,
          width: widthPercentOf(30, context),
          height: heightPercentOf(30, context)),
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

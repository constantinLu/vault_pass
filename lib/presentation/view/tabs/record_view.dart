// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:stacked/stacked.dart';
// import 'package:vault_pass/presentation/view/home/tab_widget.dart';
// import 'package:vault_pass/presentation/view/tabs/record_model.dart';
//
// class RecordView extends ViewModelWidget<RecordModel> {
//   @override
//   Widget build(BuildContext context, RecordModel viewModel) {
//     return Container(
//       width: double.infinity,
//       height: double.infinity,
//       margin: const EdgeInsets.fromLTRB(5, 2, 5, 5),
//       child: ListView.builder(
//         itemCount: viewModel.recordTypes.length,
//         itemBuilder: (context, index) {
//           return Expanded(
//             child: GestureDetector(
//               onTap: () {
//                 viewModel.navigateToAboutUsSettingsView();
//               },
//               child: TabButton(true, viewModel.getType(0)),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

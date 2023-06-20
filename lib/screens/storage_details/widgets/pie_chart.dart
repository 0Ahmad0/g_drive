// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import '../../../core/utils/app_colors.dart';
//
// class PieChartSample1 extends StatefulWidget {
//   const PieChartSample1({super.key});
//
//   @override
//   State<StatefulWidget> createState() => PieChartSample1State();
// }
//
// class PieChartSample1State extends State {
//   int touchedIndex = -1;
//
//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 1.3,
//       child: Column(
//         children: <Widget>[
//           const SizedBox(
//             height: 28,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Indicator(
//                 color: AppColors.blue,
//                 text: 'One',
//                 isSquare: false,
//                 size: touchedIndex == 0 ? 18 : 16,
//                 textColor: touchedIndex == 0 ? AppColors.blue : AppColors.blue2,
//               ),
//               Indicator(
//                 color: AppColors.yellow,
//                 text: 'Two',
//                 isSquare: false,
//                 size: touchedIndex == 1 ? 18 : 16,
//                 textColor:
//                     touchedIndex == 1 ? AppColors.yellow : AppColors.yellow,
//               ),
//               Indicator(
//                 color: AppColors.red,
//                 text: 'Three',
//                 isSquare: false,
//                 size: touchedIndex == 2 ? 18 : 16,
//                 textColor: touchedIndex == 2 ? AppColors.text1 : AppColors.red,
//               ),
//               Indicator(
//                 color: AppColors.green,
//                 text: 'Four',
//                 isSquare: false,
//                 size: touchedIndex == 3 ? 18 : 16,
//                 textColor:
//                     touchedIndex == 3 ? AppColors.text3 : AppColors.text2,
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 18,
//           ),
//           Expanded(
//             child: AspectRatio(
//               aspectRatio: 1,
//               child: PieChart(
//                 PieChartData(
//                   pieTouchData: PieTouchData(
//                     touchCallback: (FlTouchEvent event, pieTouchResponse) {
//                       setState(() {
//                         if (!event.isInterestedForInteractions ||
//                             pieTouchResponse == null ||
//                             pieTouchResponse.touchedSection == null) {
//                           touchedIndex = -1;
//                           return;
//                         }
//                         touchedIndex = pieTouchResponse
//                             .touchedSection!.touchedSectionIndex;
//                       });
//                     },
//                   ),
//                   startDegreeOffset: 180,
//                   borderData: FlBorderData(
//                     show: false,
//                   ),
//                   sectionsSpace: 1,
//                   centerSpaceRadius: 0,
//                   sections: showingSections(),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   List<PieChartSectionData> showingSections() {
//     return List.generate(
//       4,
//       (i) {
//         final isTouched = i == touchedIndex;
//         const color0 = AppColors.blue;
//         const color1 = AppColors.green;
//         const color2 = AppColors.red;
//         const color3 = AppColors.yellow;
//
//         switch (i) {
//           case 0:
//             return PieChartSectionData(
//               color: color0,
//               value: 25,
//               title: '',
//               radius: 80,
//               titlePositionPercentageOffset: 0.55,
//               borderSide: isTouched
//                   ? const BorderSide(color: AppColors.red, width: 6)
//                   : BorderSide(color: AppColors.yellow.withOpacity(0)),
//             );
//           case 1:
//             return PieChartSectionData(
//               color: color1,
//               value: 25,
//               title: '',
//               radius: 65,
//               titlePositionPercentageOffset: 0.55,
//               borderSide: isTouched
//                   ? const BorderSide(color: AppColors.blue, width: 6)
//                   : BorderSide(color: AppColors.blue.withOpacity(0)),
//             );
//           case 2:
//             return PieChartSectionData(
//               color: color2,
//               value: 25,
//               title: '',
//               radius: 60,
//               titlePositionPercentageOffset: 0.6,
//               borderSide: isTouched
//                   ? const BorderSide(color: AppColors.green, width: 6)
//                   : BorderSide(color: AppColors.green.withOpacity(0)),
//             );
//           case 3:
//             return PieChartSectionData(
//               color: color3,
//               value: 25,
//               title: '',
//               radius: 70,
//               titlePositionPercentageOffset: 0.55,
//               borderSide: isTouched
//                   ? const BorderSide(color: AppColors.red, width: 6)
//                   : BorderSide(color: AppColors.red.withOpacity(0)),
//             );
//           default:
//             throw Error();
//         }
//       },
//     );
//   }
// }

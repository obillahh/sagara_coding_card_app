// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:go_router/go_router.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';
// import 'package:qr_scanner_overlay/qr_scanner_overlay.dart';
// import 'package:sagara_coding_card_application/presentation/utils/constant/assets_constant.dart';
// import 'package:sagara_coding_card_application/presentation/utils/themes/font_theme.dart';

// import '../utils/themes/color_theme.dart';

// class ScannerScreenPage extends StatefulWidget {
//   const ScannerScreenPage({super.key});

//   @override
//   State<ScannerScreenPage> createState() => _ScannerScreenPageState();
// }

// class _ScannerScreenPageState extends State<ScannerScreenPage> {
//   GlobalKey commentsHeaderKey = GlobalKey();
//   MobileScannerController flashController = MobileScannerController();
//   bool isScanComplete = false;
//   bool isFlashOn = false;
//   double commentsHeaderHeight = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar:
//           true, // This allows the body to be drawn behind the AppBar
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: Container(
//           margin: const EdgeInsets.all(4),
//           decoration: BoxDecoration(
//             color: ColorTheme.primary,
//             borderRadius: BorderRadius.circular(30),
//           ),
//           child: IconButton(
//             onPressed: () {
//               context.pop();
//             },
//             icon: Container(
//               decoration: BoxDecoration(
//                 color: ColorTheme.primary,
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               child: Icon(
//                 Icons.arrow_back,
//                 color: ColorTheme.text,
//               ),
//             ),
//           ),
//         ),
//         actions: [
//           Container(
//             margin: const EdgeInsets.only(right: 8),
//             decoration: BoxDecoration(
//               color: ColorTheme.text,
//               borderRadius: BorderRadius.circular(30),
//             ),
//             child: IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.help_outline,
//                 size: 28,
//                 color: ColorTheme.bg,
//               ),
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.only(right: 8),
//             decoration: BoxDecoration(
//               color: ColorTheme.text,
//               borderRadius: BorderRadius.circular(30),
//             ),
//             child: IconButton(
//               onPressed: () {
//                 setState(() {
//                   isFlashOn = !isFlashOn;
//                 });
//                 print(isFlashOn);
//                 flashController.toggleTorch();
//               },
//               icon: isFlashOn == true
//                   ? Icon(
//                       Icons.flash_on,
//                       size: 28,
//                       color: ColorTheme.primary,
//                     )
//                   : Icon(
//                       Icons.flash_off,
//                       size: 28,
//                       color: ColorTheme.bg,
//                     ),
//             ),
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: MobileScanner(
//               onDetect: (barcodes) {
//                 if (!isScanComplete) {
//                   // Handle barcode detection logic
//                 }
//               },
//               controller: flashController,
//               overlay: QRScannerOverlay(
//                 borderColor: ColorTheme.primary,
//                 scanAreaWidth: 280.w,
//                 scanAreaHeight: 320.h,
//                 overlayColor: ColorTheme.bg.withOpacity(0.1),
//                 borderRadius: 32.r,
//               ),
//             ),
//           ),
//         ],
//       ),
//       bottomSheet: DraggableScrollableSheet(
//         expand: false,
//         initialChildSize: 0.1.h,
//         minChildSize: 0.1.h,
//         maxChildSize: 0.2.h,
//         builder: (BuildContext context, ScrollController scrollController) {
//           return Container(
//             decoration: const BoxDecoration(
//               color: Color(0xff333030),
//               borderRadius: BorderRadius.vertical(
//                 top: Radius.circular(20),
//               ),
//             ),
//             child: SingleChildScrollView(
//               physics: const ClampingScrollPhysics(),
//               controller: scrollController,
//               child: Column(
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.all(16),
//                     decoration: BoxDecoration(
//                       color: ColorTheme.primary,
//                       borderRadius: const BorderRadius.vertical(
//                         top: Radius.circular(20),
//                       ),
//                     ),
//                     width: double.infinity,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         SvgPicture.asset(AssetConstants.scanCardCollectionIcon),
//                         Text(
//                           'Scan New Card to Play and Earn XP',
//                           style: FontTheme.fontTheme.labelLarge,
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           height: 64.h,
//                           width: 105.w,
//                           padding: const EdgeInsets.all(8.0),
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                               color: ColorTheme.primary,
//                             ),
//                             borderRadius: BorderRadius.circular(12.r),
//                           ),
//                           child: Column(
//                             children: [
//                               SvgPicture.asset(
//                                 AssetConstants.myCollectionIcon,
//                               ),
//                               SizedBox(height: 12.h),
//                               Text(
//                                 'My Collection',
//                                 style: FontTheme.fontTheme.bodySmall,
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           height: 64.h,
//                           width: 105.w,
//                           padding: const EdgeInsets.all(8.0),
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                               color: ColorTheme.primary,
//                             ),
//                             borderRadius: BorderRadius.circular(12.r),
//                           ),
//                           child: Column(
//                             children: [
//                               SvgPicture.asset(
//                                 AssetConstants.myHistoryIcon,
//                               ),
//                               SizedBox(height: 12.h),
//                               Text(
//                                 'History',
//                                 style: FontTheme.fontTheme.bodySmall,
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           height: 64.h,
//                           width: 105.w,
//                           padding: const EdgeInsets.all(8.0),
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                               color: ColorTheme.primary,
//                             ),
//                             borderRadius: BorderRadius.circular(12.r),
//                           ),
//                           child: Column(
//                             children: [
//                               SvgPicture.asset(
//                                 AssetConstants.myLeaderboardIcon,
//                               ),
//                               SizedBox(height: 12.h),
//                               Text(
//                                 'Leaderboard',
//                                 style: FontTheme.fontTheme.bodySmall,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:go_router/go_router.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';
// import 'package:qr_scanner_overlay/qr_scanner_overlay.dart';
// import 'package:sagara_coding_card_application/presentation/utils/constant/assets_constant.dart';
// import 'package:sagara_coding_card_application/presentation/utils/themes/font_theme.dart';

// import '../utils/themes/color_theme.dart';

// class ScannerScreenPage extends StatefulWidget {
//   const ScannerScreenPage({super.key});

//   @override
//   State<ScannerScreenPage> createState() => _ScannerScreenPageState();
// }

// class _ScannerScreenPageState extends State<ScannerScreenPage> {
//   GlobalKey commentsHeaderKey = GlobalKey();
//   MobileScannerController flashController = MobileScannerController();
//   bool isScanComplete = false;
//   bool isFlashOn = false;
//   double commentsHeaderHeight = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar:
//           true, // This allows the body to be drawn behind the AppBar
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: Container(
//           margin: const EdgeInsets.all(4),
//           decoration: BoxDecoration(
//             color: ColorTheme.primary,
//             borderRadius: BorderRadius.circular(30),
//           ),
//           child: IconButton(
//             onPressed: () {
//               context.pop();
//             },
//             icon: Container(
//               decoration: BoxDecoration(
//                 color: ColorTheme.primary,
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               child: Icon(
//                 Icons.arrow_back,
//                 color: ColorTheme.text,
//               ),
//             ),
//           ),
//         ),
//         actions: [
//           Container(
//             margin: const EdgeInsets.only(right: 8),
//             decoration: BoxDecoration(
//               color: ColorTheme.text,
//               borderRadius: BorderRadius.circular(30),
//             ),
//             child: IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.help_outline,
//                 size: 28,
//                 color: ColorTheme.bg,
//               ),
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.only(right: 8),
//             decoration: BoxDecoration(
//               color: ColorTheme.text,
//               borderRadius: BorderRadius.circular(30),
//             ),
//             child: IconButton(
//               onPressed: () {
//                 setState(() {
//                   isFlashOn = !isFlashOn;
//                 });
//                 print(isFlashOn);
//                 flashController.toggleTorch();
//               },
//               icon: isFlashOn == true
//                   ? Icon(
//                       Icons.flash_on,
//                       size: 28,
//                       color: ColorTheme.primary,
//                     )
//                   : Icon(
//                       Icons.flash_off,
//                       size: 28,
//                       color: ColorTheme.bg,
//                     ),
//             ),
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: MobileScanner(
//               onDetect: (barcodes) {
//                 if (!isScanComplete) {
//                   // Handle barcode detection logic
//                 }
//               },
//               controller: flashController,
//               overlay: QRScannerOverlay(
//                 borderColor: ColorTheme.primary,
//                 scanAreaWidth: 280.w,
//                 scanAreaHeight: 320.h,
//                 overlayColor: ColorTheme.bg.withOpacity(0.1),
//                 borderRadius: 32.r,
//               ),
//             ),
//           ),
//         ],
//       ),
//       bottomSheet: DraggableScrollableSheet(
//         expand: false,
//         initialChildSize: 0.1.h,
//         minChildSize: 0.1.h,
//         maxChildSize: 0.2.h,
//         builder: (BuildContext context, ScrollController scrollController) {
//           return Container(
//             decoration: const BoxDecoration(
//               color: Color(0xff333030),
//               borderRadius: BorderRadius.vertical(
//                 top: Radius.circular(20),
//               ),
//             ),
//             child: SingleChildScrollView(
//               physics: const ClampingScrollPhysics(),
//               controller: scrollController,
//               child: Column(
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.all(16),
//                     decoration: BoxDecoration(
//                       color: ColorTheme.primary,
//                       borderRadius: const BorderRadius.vertical(
//                         top: Radius.circular(20),
//                       ),
//                     ),
//                     width: double.infinity,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         SvgPicture.asset(AssetConstants.scanCardCollectionIcon),
//                         Text(
//                           'Scan New Card to Play and Earn XP',
//                           style: FontTheme.fontTheme.labelLarge,
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           height: 64.h,
//                           width: 105.w,
//                           padding: const EdgeInsets.all(8.0),
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                               color: ColorTheme.primary,
//                             ),
//                             borderRadius: BorderRadius.circular(12.r),
//                           ),
//                           child: Column(
//                             children: [
//                               SvgPicture.asset(
//                                 AssetConstants.myCollectionIcon,
//                               ),
//                               SizedBox(height: 12.h),
//                               Text(
//                                 'My Collection',
//                                 style: FontTheme.fontTheme.bodySmall,
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           height: 64.h,
//                           width: 105.w,
//                           padding: const EdgeInsets.all(8.0),
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                               color: ColorTheme.primary,
//                             ),
//                             borderRadius: BorderRadius.circular(12.r),
//                           ),
//                           child: Column(
//                             children: [
//                               SvgPicture.asset(
//                                 AssetConstants.myHistoryIcon,
//                               ),
//                               SizedBox(height: 12.h),
//                               Text(
//                                 'History',
//                                 style: FontTheme.fontTheme.bodySmall,
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           height: 64.h,
//                           width: 105.w,
//                           padding: const EdgeInsets.all(8.0),
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                               color: ColorTheme.primary,
//                             ),
//                             borderRadius: BorderRadius.circular(12.r),
//                           ),
//                           child: Column(
//                             children: [
//                               SvgPicture.asset(
//                                 AssetConstants.myLeaderboardIcon,
//                               ),
//                               SizedBox(height: 12.h),
//                               Text(
//                                 'Leaderboard',
//                                 style: FontTheme.fontTheme.bodySmall,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:sagara_coding_card_application/presentation/manager/auth_manage/auth/auth_bloc.dart';
import 'package:sagara_coding_card_application/presentation/manager/card_manage/add_card_collection/bloc/card_collection_bloc.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_fonts.dart';

import '../manager/card_manage/get_card_id/bloc/card_id_bloc.dart';
import '../utils/constant/assets_constant.dart';
import '../utils/constant/router_constant.dart';
import '../utils/themes/app_colors.dart';

class ScannerScreenPage extends StatefulWidget {
  const ScannerScreenPage({super.key});

  @override
  State<ScannerScreenPage> createState() => _ScannerScreenPageState();
}

class _ScannerScreenPageState extends State<ScannerScreenPage> {
  late final GlobalKey _qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? qrController;
  bool isFlashOn = false;
  late String scannedData;

  @override
  void dispose() {
    qrController?.dispose();
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      qrController?.pauseCamera();
    } else if (Platform.isIOS) {
      qrController?.resumeCamera();
    }
  }

  void _onQRViewCreated(QRViewController controller) {
    qrController = controller;
    controller.scannedDataStream.listen(
      (Barcode barcode) {
        inspect('Scanned barcode: ${barcode.code}');
        scannedData = barcode.code!;
        final contextBloc = context.read<CardIdBloc>();
        contextBloc.add(GetCardScannerEvent(url: scannedData));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          padding: const EdgeInsets.all(0),
          style: IconButton.styleFrom(
            backgroundColor: AppColors.text,
            iconSize: 46.sp,
          ),
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_circle_left_rounded,
            color: AppColors.primary,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            padding: const EdgeInsets.all(0),
            style: IconButton.styleFrom(
              backgroundColor: AppColors.text,
              iconSize: 46.sp,
            ),
            icon: const Icon(
              Icons.help_rounded,
              color: AppColors.background,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                isFlashOn = !isFlashOn;
              });
              print('Flash is ${isFlashOn ? 'on' : 'off'}');
              qrController?.toggleFlash();
            },
            padding: const EdgeInsets.all(0),
            style: IconButton.styleFrom(
              backgroundColor: AppColors.text,
              iconSize: 46.sp,
            ),
            icon: isFlashOn
                ? const Icon(
                    Icons.flash_on_rounded,
                    color: AppColors.background,
                  )
                : const Icon(
                    Icons.flash_off_rounded,
                    color: AppColors.background,
                  ),
          ),
        ],
      ),
      body: Column(
        children: [
          BlocConsumer<CardIdBloc, CardIdState>(
            bloc: context.read<CardIdBloc>(),
            listener: (context, state) {
              if (state is CardIdSuccessState) {
                final cardId = state.card.id;
                final userId = (context.read<AuthBloc>().state as CurrentUserState).currentUser!.id;
                inspect(cardId);
                context.read<CardCollectionBloc>().add(
                      AddCollectionCardEvent(
                        cardId: cardId,
                        userId: userId,
                      ),
                    );
                context.goNamed(
                  RouterConstant.detailScanner,
                  extra: cardId,
                );
              } else if (state is CardIdFailureState) {
                print('Error: ${state.message}');
              }
            },
            builder: (context, state) {
              if (state is CardIdLoadingState) {
                return const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else {
                return Expanded(
                  child: QRView(
                    key: _qrKey,
                    onQRViewCreated: _onQRViewCreated,
                    overlay: QrScannerOverlayShape(
                      borderColor: AppColors.primary,
                      overlayColor: AppColors.background.withOpacity(0.5.r),
                      borderRadius: 6.r,
                      borderLength: 80.r,
                      borderWidth: 8.w,
                      cutOutWidth: 280.w,
                      cutOutHeight: 320.h,
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
      bottomSheet: DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.06.h,
        minChildSize: 0.06.h,
        maxChildSize: 0.18.h,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: const Color(0xff333030),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20.r),
              ),
            ),
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              controller: scrollController,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20.r),
                      ),
                    ),
                    width: double.infinity.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(AssetsConstant.scanNewCardIcon),
                        Text(
                          'Scan New Card to Play and Earn XP',
                          style: AppFonts.appFont.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 64.h,
                          width: 105.w,
                          padding: EdgeInsets.all(8.0.w),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.primary,
                            ),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                AssetsConstant.myCollectionIcon,
                              ),
                              SizedBox(height: 12.h),
                              Text(
                                'My Collection',
                                style: AppFonts.appFont.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 64.h,
                          width: 105.w,
                          padding: EdgeInsets.all(8.0.w),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.primary,
                            ),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                AssetsConstant.myHistoryIcon,
                              ),
                              SizedBox(height: 12.h),
                              Text(
                                'History',
                                style: AppFonts.appFont.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 64.h,
                          width: 105.w,
                          padding: EdgeInsets.all(8.0.w),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.primary,
                            ),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                AssetsConstant.myLeaderboardIcon,
                              ),
                              SizedBox(height: 12.h),
                              Text(
                                'Leaderboard',
                                style: AppFonts.appFont.bodySmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_colors.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_fonts.dart';

import '../utils/assets_constant.dart';

class DetailsCollectionScreenPage extends StatefulWidget {
  const DetailsCollectionScreenPage({Key? key}) : super(key: key);

  @override
  State<DetailsCollectionScreenPage> createState() =>
      _DetailsCollectionScreenPageState();
}

class _DetailsCollectionScreenPageState
    extends State<DetailsCollectionScreenPage> with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.background,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_circle_left,
              size: 50,
              color: AppColors.text,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.help_outline_sharp,
                size: 30,
                color: AppColors.text,
              ),
            ),
          ),
        ],
      ),
      body: Image.asset(
        AssetsConstant.character,
        fit: BoxFit.fitWidth,
      ),
      bottomSheet: BottomSheet(
        animationController: _animationController,
        enableDrag: true,
        showDragHandle: true,
        onClosing: () {
          Navigator.of(context).pop();
        },
        backgroundColor: const Color(0xff333030),
        builder: (context) {
          return SizedBox(
            height: 260.h,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Card Info'.toUpperCase(),
                            style: AppFonts.appFont.titleLarge!.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.primary,
                            ),
                            child: Text(
                              'Technical Writer'.toUpperCase(),
                              style: AppFonts.appFont.titleSmall!.copyWith(
                                fontWeight: FontWeight.w800,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'TESSA CODEQUILL'.toUpperCase(),
                                style: AppFonts.appFont.headlineSmall!.copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Text(
                                'TECHNICAL WRITER'.toUpperCase(),
                                style: AppFonts.appFont.bodyLarge!.copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Level',
                                style: AppFonts.appFont.labelLarge!.copyWith(
                                  color: AppColors.placeholder,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    AssetsConstant.characterLevelIcon,
                                    width: 24.w,
                                  ),
                                  SizedBox(width: 8.w),
                                  Text(
                                    '2',
                                    style: AppFonts.appFont.headlineSmall!
                                        .copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        'Para Narasumber di dunia teknologi. Mereka menulis instruksi, panduan, dan penjelasan yang membantu orang memahami cara menggunakan situs web, aplikasi, atau perangkat lunak. Mereka memastikan instruksi tersebut jelas dan mudah diikuti.',
                        style: AppFonts.appFont.labelSmall!,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          minimumSize: Size(260.w, 48.h),
                        ),
                        child: Text(
                          'Choose as Avatar',
                          style: AppFonts.appFont.labelLarge!.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: AppColors.primary,
                          ),
                          minimumSize: Size(48.w, 48.h),
                        ),
                        child: const Icon(Icons.share),
                      ),
                    ],
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

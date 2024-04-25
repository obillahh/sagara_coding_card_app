import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/domain/entities/card_entity/card_id_response_entity.dart';
import 'package:sagara_coding_card_application/presentation/manager/profile_manage/bloc/profile_bloc.dart';

import '../utils/constant/assets_constant.dart';
import '../utils/themes/app_colors.dart';
import '../utils/themes/app_fonts.dart';

class DetailCardSheetWidget extends StatelessWidget {
  final CardIdResponseDataEntity card;
  final AnimationController _animationController;
  final bool isFromScanner;

  const DetailCardSheetWidget({
    super.key,
    required AnimationController animationController,
    required this.card,
    required this.isFromScanner,
  }) : _animationController = animationController;

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      animationController: _animationController,
      enableDrag: true,
      showDragHandle: true,
      onClosing: () {
        context.pop();
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
                            horizontal: 18,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.primary,
                          ),
                          child: Text(
                            card.attributes.role,
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
                              card.attributes.name,
                              style: AppFonts.appFont.headlineSmall!.copyWith(
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Text(
                              card.attributes.role,
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
                                  card.attributes.level,
                                  style: AppFonts.appFont.headlineSmall!.copyWith(
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
                      card.attributes.description,
                      style: AppFonts.appFont.labelSmall!,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (isFromScanner) {
                          context.go('/quiz_card');
                        } else {
                          context.read<ProfileBloc>().add(
                                SetAvatarProfileEvent(
                                  card.attributes.avatarCard.data.attributes.url,
                                ),
                              );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        minimumSize: Size(260.w, 40.h),
                      ),
                      child: Text(
                        isFromScanner ? 'Take Quiz' : 'Choose as Avatar',
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
                        minimumSize: Size(40.w, 40.h),
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/data/models/auth_model/user_model/avatar_update_request_model.dart';
import 'package:sagara_coding_card_application/domain/entities/card_entity/card_id_response_entity.dart';
import 'package:sagara_coding_card_application/presentation/manager/auth_manage/auth/auth_bloc.dart';
import 'package:sagara_coding_card_application/presentation/manager/auth_manage/bloc/avatar_bloc.dart';
import 'package:sagara_coding_card_application/presentation/manager/card_manage/bloc/card_bloc.dart';

import '../utils/constant/assets_constant.dart';
import '../utils/themes/app_colors.dart';
import '../utils/themes/app_fonts.dart';

class DetailCardSheetWidget extends StatelessWidget {
  final CardIdResponseDataEntity card;
  final bool isFromScanner;

  const DetailCardSheetWidget({
    super.key,
    required AnimationController animationController,
    required this.card,
    required this.isFromScanner,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, authState) {
        if (authState is CurrentUserState) {
          final userId = authState.currentUser!.id;
          return BlocBuilder<CardBloc, CardState>(
            builder: (context, cardState) {
              return _buildDraggableScrollableSheet(context, userId, cardState);
            },
          );
        } else {
          return _buildLoadingDraggableScrollableSheet(context);
        }
      },
    );
  }

  Widget _buildDraggableScrollableSheet(BuildContext context, int userId, CardState cardState) {
    return DraggableScrollableSheet(
      initialChildSize: 0.4.sp,
      minChildSize: 0.2.sp,
      maxChildSize: 0.4.sp,
      expand: false,
      builder: (context, scrollController) {
        return Container(
          height: ScreenUtil().screenHeight,
          decoration: BoxDecoration(
            color: const Color(0xff333030),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0.r),
              topRight: Radius.circular(20.0.r),
            ),
          ),
          child: Column(
            children: [
              _buildDragHandle(),
              Expanded(
                child: ListView(
                  physics: const ClampingScrollPhysics(),
                  controller: scrollController,
                  padding: REdgeInsets.all(16.0),
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
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Container(
                              padding: REdgeInsets.symmetric(
                                horizontal: 18,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
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
                    SizedBox(height: 56.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (isFromScanner == false) {
                              context.read<AvatarBloc>().add(
                                    ChangeAvatarEvent(
                                      request: AvatarUpdateRequestModel(
                                        ref: 'plugin::users-permissions.user',
                                        refId: userId,
                                        field: 'avatar',
                                        files: card.attributes.avatarCard.data.attributes.url,
                                      ),
                                    ),
                                  );
                            } else {
                              cardState.maybeWhen(
                                success: (cardList, card, userData, checkCard) {
                                  if (checkCard != null && checkCard.status == 200) {
                                    context.read<AvatarBloc>().add(
                                          ChangeAvatarEvent(
                                            request: AvatarUpdateRequestModel(
                                              ref: 'plugin::users-permissions.user',
                                              refId: userId,
                                              field: 'avatar',
                                              files:
                                                  card!.attributes.avatarCard.data.attributes.url,
                                            ),
                                          ),
                                        );
                                  } else {
                                    context.go('/quiz_card');
                                  }
                                },
                                orElse: () {},
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            minimumSize: Size(260.w, 40.h),
                          ),
                          child: Text(
                            isFromScanner == false
                                ? 'Choose as Avatar'
                                : cardState.maybeWhen(
                                    success: (cardList, card, userData, checkCard) {
                                      if (checkCard != null && checkCard.status == 200) {
                                        return 'Choose as Avatar';
                                      } else {
                                        return 'Take Quiz';
                                      }
                                    },
                                    orElse: () => 'Take Quiz',
                                  ),
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
                          child: const Icon(
                            Icons.share,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildLoadingDraggableScrollableSheet(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.25,
      maxChildSize: 0.9,
      expand: false,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Color(0xff333030),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }

  Widget _buildDragHandle() {
    return Container(
      width: 40.w,
      height: 4.h,
      margin: REdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(4.r),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/data/models/card_model/check_card_request_model.dart';
import 'package:sagara_coding_card_application/presentation/manager/auth_manage/auth/auth_bloc.dart';
import 'package:sagara_coding_card_application/presentation/manager/card_manage/bloc/card_bloc.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/assets_constant.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/router_constant.dart';
import 'package:shimmer/shimmer.dart';

import '../utils/themes/app_colors.dart';
import '../utils/themes/app_fonts.dart';

class CollectionScreenPage extends StatefulWidget {
  const CollectionScreenPage({super.key});

  @override
  State<CollectionScreenPage> createState() => _CollectionScreenPageState();
}

class _CollectionScreenPageState extends State<CollectionScreenPage> {
  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().add(GetStoredUserIdEvent());
    context.read<AuthBloc>().stream.listen((state) {
      if (state is UserIdStoredState) {
        context.read<CardBloc>().add(CardEvent.getCardListEvent(id: state.userId));
      }
    });
  }

  Future<void> _refresh() async {
    context.read<AuthBloc>().add(GetStoredUserIdEvent());
    context.read<AuthBloc>().stream.listen((state) {
      if (state is UserIdStoredState) {
        context.read<CardBloc>().add(CardEvent.getCardListEvent(id: state.userId));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: _refresh,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Text(
                        'CARD ',
                        style: AppFonts.appFont.headlineSmall!.copyWith(
                          fontWeight: FontWeight.w700,
                          height: 0.h,
                        ),
                      ),
                      const Expanded(
                        child: Divider(color: AppColors.text),
                      ),
                    ],
                  ),
                  Text(
                    'COLLECTION',
                    style: AppFonts.appFont.displaySmall!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary,
                      height: 0.h,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.primary,
                          width: 2.w,
                        ),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.primary,
                          width: 2.w,
                        ),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      hintText: 'Search Card',
                      hintStyle: AppFonts.appFont.titleMedium!.copyWith(
                        color: AppColors.placeholder,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: AppColors.primary,
                      ),
                      suffixIcon: const Icon(
                        Icons.filter_list,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    children: [
                      Text(
                        'CHARACTER ',
                        style: AppFonts.appFont.titleLarge!.copyWith(
                          fontWeight: FontWeight.w700,
                          height: 0.h,
                        ),
                      ),
                      const Expanded(
                        child: Divider(color: AppColors.placeholder),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  BlocBuilder<CardBloc, CardState>(
                    bloc: context.read<CardBloc>(),
                    builder: (context, state) {
                      return state.when(
                        initial: () {
                          return const SizedBox();
                        },
                        loading: () {
                          return GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 8.sp,
                              mainAxisSpacing: 4.sp,
                              childAspectRatio: 0.56.r,
                            ),
                            itemBuilder: (context, index) {
                              return Shimmer.fromColors(
                                baseColor: Colors.grey.shade800,
                                highlightColor: Colors.grey.shade700,
                                direction: ShimmerDirection.ttb,
                                child: Container(
                                  height: 180.h,
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.r),
                                    color: AppColors.primary,
                                  ),
                                ),
                              );
                            },
                            itemCount: 6,
                          );
                        },
                        success: (cardList, card, userData, checkCard) {
                          if (cardList == null || cardList.isEmpty) {
                            return Center(
                              child: Text(
                                'No cards available.',
                                style: AppFonts.appFont.titleMedium!.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.primary,
                                  height: 0.h,
                                ),
                              ),
                            );
                          }
                          return GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 4.h,
                              mainAxisSpacing: 4.h,
                              childAspectRatio: ScreenUtil().pixelRatio! * 0.28,
                            ),
                            itemBuilder: (context, index) {
                              if (cardList[index].status == "locked") {
                                return GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        title: const Text(
                                          'Locked',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.primary,
                                          ),
                                        ),
                                        content: const Text(
                                          'This card is locked',
                                          style: TextStyle(color: AppColors.text),
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: context.pop,
                                            child: const Text(
                                              'OK',
                                              style: TextStyle(
                                                color: AppColors.text,
                                              ),
                                            ),
                                          ),
                                        ],
                                        backgroundColor: AppColors.background,
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    AssetsConstant.lockCard,
                                  ),
                                );
                              }
                              return GestureDetector(
                                onTap: () {
                                  final id = cardList[index].id;
                                  context.read<AuthBloc>().add(GetStoredUserIdEvent());
                                  context.read<AuthBloc>().stream.listen((state) {
                                    if (state is UserIdStoredState) {
                                      context.read<CardBloc>().add(
                                            CardEvent.checkCardEvent(
                                              cardId: id,
                                              request: CheckCardRequestModel(userId: state.userId),
                                            ),
                                          );
                                    }
                                  });

                                  context.read<CardBloc>().add(CardEvent.getCardByIdEvent(id: id));
                                  context.pushNamed(
                                    RouterConstant.detailCollection,
                                    pathParameters: {
                                      'id': id.toString(),
                                    },
                                  );
                                },
                                child: Image.network(
                                  cardList[index].avatarCard.url,
                                ),
                              );
                            },
                            itemCount: cardList.length,
                          );
                        },
                        failure: (message) {
                          return Center(
                            child: Text(
                              message,
                              style: AppFonts.appFont.titleMedium!.copyWith(
                                fontWeight: FontWeight.w700,
                                color: AppColors.primary,
                                height: 0.h,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(height: 32.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

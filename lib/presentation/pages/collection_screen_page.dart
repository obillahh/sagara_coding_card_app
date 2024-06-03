import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/data/models/card_model/check_card_request_model.dart';
import 'package:sagara_coding_card_application/presentation/manager/auth_manage/auth/auth_bloc.dart';
import 'package:sagara_coding_card_application/presentation/manager/card_manage/get_card_id/bloc/card_id_bloc.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/assets_constant.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/router_constant.dart';
import 'package:shimmer/shimmer.dart';

import '../manager/card_manage/get_card_list/bloc/card_list_bloc.dart';
import '../utils/themes/app_colors.dart';
import '../utils/themes/app_fonts.dart';

class CollectionScreenPage extends StatefulWidget {
  const CollectionScreenPage({super.key});

  @override
  State<CollectionScreenPage> createState() => _CollectionScreenPageState();
}

class _CollectionScreenPageState extends State<CollectionScreenPage> {
  int? userId;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final authState = context.read<AuthBloc>().state;
    if (authState is CurrentUserState && authState.currentUser != null) {
      userId = authState.currentUser!.id;
      context.read<CardListBloc>().add(GetCardAlbumListEvent(id: userId!));
    }
  }

  Future<void> _refresh() async {
    final authState = context.read<AuthBloc>().state;
    if (authState is CurrentUserState && authState.currentUser != null) {
      userId = authState.currentUser!.id;
      context.read<CardListBloc>().add(GetCardAlbumListEvent(id: userId!));
    }
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
                  BlocBuilder<CardListBloc, CardListState>(
                    builder: (context, state) {
                      if (state is CardAlbumListSuccessState) {
                        return GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8.sp,
                            mainAxisSpacing: 4.sp,
                            childAspectRatio: 0.56.r,
                            // childAspectRatio: .6,
                          ),
                          itemBuilder: (context, index) {
                            if (state.cardList[index].status == "locked") {
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
                                final id = state.cardList[index].id;
                                context.read<CardIdBloc>().add(CheckCardEvent(
                                      cardId: id,
                                      request: CheckCardRequestModel(userId: userId!),
                                    ));
                                context.read<CardIdBloc>().add(GetCardIdEvent(id: id));
                                context.pushNamed(
                                  RouterConstant.detailCollection,
                                  pathParameters: {
                                    'id': id.toString(),
                                  },
                                );
                              },
                              child: Image.network(
                                state.cardList[index].avatarCard.url,
                              ),
                            );
                          },
                          itemCount: state.cardList.length,
                        );
                      }
                      if (state is CardListFailureState) {
                        return const Center(
                          child: Text('Card Collection Empty'),
                        );
                      } else {
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
                                  borderRadius: BorderRadius.circular(4),
                                  color: AppColors.primary,
                                ),
                              ),
                            );
                          },
                          itemCount: 6,
                        );
                      }
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

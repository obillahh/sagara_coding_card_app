import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/presentation/manager/card_manage/get_card_id/bloc/card_id_bloc.dart';
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
  @override
  void initState() {
    super.initState();
    context.read<CardListBloc>().add(GetCardListEvent());
  }

  Future<void> _refresh() async {
    context.read<CardListBloc>().add(GetCardListEvent());
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
                      if (state is CardListSuccessState) {
                        if (state.cardList.isEmpty) {
                          return const Center(
                            child: Text('Empty'),
                          );
                        }
                        return GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            // childAspectRatio: .6,
                          ),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                context
                                    .read<CardIdBloc>()
                                    .add(GetCardIdEvent(id: state.cardList[index].id));
                                context.pushNamed(
                                  RouterConstant.detailCollection,
                                  extra: state.cardList[index].id,
                                );
                              },
                              child: Image.network(
                                state.cardList[index].attributes.avatarCard.data
                                    .attributes.url,
                                width: state.cardList[index].attributes.avatarCard.data
                                    .attributes.width
                                    .toDouble(),
                              ),
                            );
                          },
                          itemCount: state.cardList.length,
                        );
                      } else {
                        return GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            childAspectRatio: .8,
                          ),
                          itemBuilder: (context, index) {
                            return Shimmer.fromColors(
                              baseColor: Colors.grey.shade800,
                              highlightColor: Colors.grey.shade700,
                              direction: ShimmerDirection.ttb,
                              // period: const Duration(milliseconds: 800),
                              child: Container(
                                height: 200.h,
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

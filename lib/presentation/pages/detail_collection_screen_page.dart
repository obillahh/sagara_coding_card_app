import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sagara_coding_card_application/presentation/manager/auth_manage/auth/auth_bloc.dart';
import 'package:sagara_coding_card_application/presentation/manager/card_manage/bloc/card_bloc.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_colors.dart';
import '../widgets/detail_card_sheet_widget.dart';

class DetailsCollectionScreenPage extends StatefulWidget {
  const DetailsCollectionScreenPage({
    super.key,
    required this.id,
  });

  final int id;

  @override
  State<DetailsCollectionScreenPage> createState() => _DetailsCollectionScreenPageState();
}

class _DetailsCollectionScreenPageState extends State<DetailsCollectionScreenPage>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late int userId;

  @override
  void initState() {
    super.initState();
    context.read<CardBloc>().add(CardEvent.getCardByIdEvent(id: widget.id));
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

  void _onBackPressed() {
    context.read<AuthBloc>().stream.listen((state) {
      if (state is UserIdStoredState) {
        context.read<CardBloc>().add(CardEvent.getCardListEvent(id: state.userId));
      }
    });
    Navigator.of(context).pop();
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
            onPressed: _onBackPressed,
            icon: Icon(
              Icons.arrow_circle_left,
              size: 40.sp,
              color: AppColors.text,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.help_outline_sharp,
                size: 30.sp,
                color: AppColors.text,
              ),
            ),
          ),
        ],
      ),
      body: BlocBuilder<CardBloc, CardState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator(color: AppColors.primary)),
            success: (cardList, card, userData, checkCard) {
              if (card != null) {
                return SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.network(
                      card.attributes.avatarCard.data.attributes.url,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                );
              }
              return Center(
                child: Text(
                  'Card data not found.',
                  style: TextStyle(
                    color: AppColors.text,
                    fontSize: 18.sp,
                  ),
                ),
              );
            },
            failure: (error) => Center(child: Text(error)),
          );
        },
      ),
      bottomSheet: BlocBuilder<CardBloc, CardState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () {
              return BottomSheet(
                animationController: _animationController,
                enableDrag: true,
                showDragHandle: true,
                backgroundColor: const Color(0xff333030),
                onClosing: () {},
                builder: (context) {
                  return SizedBox(
                    height: 260.h,
                    child: const Center(child: CircularProgressIndicator()),
                  );
                },
              );
            },
            success: (cardList, card, userData, checkCard) {
              if (card == null) {
                return SizedBox(
                  height: 260.h,
                  child: const Center(
                    child: Text(
                      'No card data available.',
                      style: TextStyle(color: AppColors.text),
                    ),
                  ),
                );
              }
              return DetailCardSheetWidget(
                animationController: _animationController,
                card: card,
                isFromScanner: false,
              );
            },
            failure: (error) => Center(child: Text(error)),
          );
        },
      ),
    );
  }
}

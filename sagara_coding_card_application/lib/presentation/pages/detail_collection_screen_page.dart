import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/presentation/manager/card_manage/get_card_id/bloc/card_id_bloc.dart';
import 'package:sagara_coding_card_application/presentation/utils/themes/app_colors.dart';

import '../utils/constant/assets_constant.dart';
import '../widgets/detail_card_sheet_widget.dart';

class DetailsCollectionScreenPage extends StatefulWidget {
  final int id;
  const DetailsCollectionScreenPage({super.key, required this.id});

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
      bottomSheet: BlocBuilder<CardIdBloc, CardIdState>(
        builder: (context, state) {
          if (state is CardIdSuccessState) {
            final card = state.card;
            return DetailCardSheetWidget(
              animationController: _animationController,
              card: card,
            );
          }
          return BottomSheet(
            animationController: _animationController,
            enableDrag: true,
            showDragHandle: true,
            backgroundColor: const Color(0xff333030),
            onClosing: () {
              context.pop();
            },
            builder: (context) {
              return SizedBox(
                height: 260.h,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

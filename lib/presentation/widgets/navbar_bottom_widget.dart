import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../utils/constant/assets_constant.dart';

class NavigationBottomWidget extends StatefulWidget {
  const NavigationBottomWidget({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<NavigationBottomWidget> createState() => _NavigationBottomWidgetState();
}

class _NavigationBottomWidgetState extends State<NavigationBottomWidget> {
  int selectedIndex = 0;

  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  Container _buildNavItem(int index, String nonActiveIcon, String activeIcon) {
    return Container(
      decoration: BoxDecoration(
        color: selectedIndex == index ? const Color(0xffC5233A) : Colors.transparent,
        borderRadius: BorderRadius.circular(12).r,
      ),
      child: IconButton(
        onPressed: () {
          setState(() {
            selectedIndex = index;
          });
          _goBranch(selectedIndex);
        },
        icon: SvgPicture.asset(
          selectedIndex == index ? activeIcon : nonActiveIcon,
          width: 24.h,
        ),
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: widget.navigationShell,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 70.h,
        width: 70.h,
        child: FloatingActionButton(
          onPressed: () {
            context.push('/scanner');
          },
          backgroundColor: const Color(0xffC5233A),
          shape: const CircleBorder(),
          child: SvgPicture.asset(
            AssetsConstant.scannerIcon,
            width: 30.h,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: const Color(0xff333030),
        notchMargin: 14.h,
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                _buildNavItem(0, AssetsConstant.nonHomeIcon, AssetsConstant.homeIcon),
                SizedBox(width: 24.w),
                _buildNavItem(1, AssetsConstant.nonCollectionIcon, AssetsConstant.collectionIcon),
              ],
            ),
            Row(
              children: [
                _buildNavItem(2, AssetsConstant.nonLeaderboardIcon, AssetsConstant.leaderboardIcon),
                SizedBox(width: 24.w),
                _buildNavItem(3, AssetsConstant.nonProfileIcon, AssetsConstant.profileIcon),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

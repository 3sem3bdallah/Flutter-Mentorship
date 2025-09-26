import 'package:anime_app/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 10.r),
      child: GNav(
        gap: 8,
        color: AppColors.gray300,
        activeColor: AppColors.white,
        tabBackgroundColor: AppColors.primary,
        padding: EdgeInsets.symmetric(horizontal: 14.r, vertical: 10.r),
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        tabs: [
          GButton(
            icon: Icons.home,
            leading: SvgPicture.asset(
              'assets/icons/home.svg',
              colorFilter: ColorFilter.mode(
                _selectedIndex == 0 ? AppColors.white : AppColors.gray300,
                BlendMode.srcIn,
              ),
              width: 20.w,
              height: 20.h,
            ),
            text: "Home",
          ),
          GButton(
            icon: Icons.book,
            leading: SvgPicture.asset(
              'assets/icons/library.svg',
              colorFilter: ColorFilter.mode(
                _selectedIndex == 1 ? AppColors.white : AppColors.gray300,
                BlendMode.srcIn,
              ),
              width: 20.w,
              height: 20.h,
            ),
            text: "Library",
          ),
          GButton(
            icon: Icons.search,
            leading: SvgPicture.asset(
              'assets/icons/search.svg',
              colorFilter: ColorFilter.mode(
                _selectedIndex == 2 ? AppColors.white : AppColors.gray300,
                BlendMode.srcIn,
              ),
              width: 20.w,
              height: 20.h,
            ),
            text: "Search",
          ),
          GButton(
            icon: Icons.language,
            leading: SvgPicture.asset(
              'assets/icons/ball.svg',
              colorFilter: ColorFilter.mode(
                _selectedIndex == 3 ? AppColors.white : AppColors.gray300,
                BlendMode.srcIn,
              ),
              width: 20.w,
              height: 20.h,
            ),
            text: "Action",
          ),
          GButton(
            icon: Icons.settings,
            leading: SvgPicture.asset(
              'assets/icons/setting.svg',
              colorFilter: ColorFilter.mode(
                _selectedIndex == 4 ? AppColors.white : AppColors.gray300,
                BlendMode.srcIn,
              ),
              width: 20.w,
              height: 20.h,
            ),
            text: "Settings",
          ),
        ],
      ),
    );
  }
}

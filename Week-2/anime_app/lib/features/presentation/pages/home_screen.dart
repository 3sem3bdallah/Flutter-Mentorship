import 'package:anime_app/core/theme.dart';
import 'package:anime_app/features/presentation/pages/details_screen.dart';
import 'package:anime_app/features/presentation/widgets/all_anime.dart';
import 'package:anime_app/features/presentation/widgets/custom_nav_bar.dart';
import 'package:anime_app/features/presentation/widgets/filtering_list_view.dart';
import 'package:anime_app/features/presentation/widgets/top_character.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> filterItems = [
    'All',
    'Popular',
    'Trending',
    'New Releases',
    'Action',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.accentBlue.withValues(alpha: 0.8),
              AppColors.accentBlue.withValues(alpha: 0.4),
              AppColors.accentBlue.withValues(alpha: 0.1),
              AppColors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: Stack(
          children: [
            Positioned(
              top: 0.h,
              right: 0.w,
              child: SvgPicture.asset(
                'assets/icons/right_star_2.svg',
                width: 300.w,
                height: 300.h,
              ),
            ),

            SafeArea(
              bottom: false,
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsetsGeometry.symmetric(
                        horizontal: 14.r,
                        vertical: 10.h,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Where Anime Comes Alive',
                          style: TextStyle(
                            color: AppColors.dark2,
                            fontSize: 24.sp,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.only(top: 16.h, bottom: 20.h),
                      child: FilteringListView(filterItems: filterItems),
                    ),
                  ),

                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 14.h),
                      child: AllAnime(
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailsScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 16.r),
                      child: Text(
                        'Top Characters',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.sp,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),

                  SliverToBoxAdapter(
                    // child: Padding(
                      // padding: EdgeInsets.only(top: 1.h, bottom: 24.h),
                      child: TopCharacter(press: () {}),
                    ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}

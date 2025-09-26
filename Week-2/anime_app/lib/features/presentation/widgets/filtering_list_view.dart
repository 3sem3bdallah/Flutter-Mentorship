import 'package:anime_app/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilteringListView extends StatefulWidget {
  const FilteringListView({super.key, required this.filterItems});
final List<String> filterItems;
  @override
  State<FilteringListView> createState() => _FilteringListViewState();
}

class _FilteringListViewState extends State<FilteringListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 14.r),
        itemCount: widget.filterItems.length,
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              padding: EdgeInsets.symmetric(horizontal: 14.r),
              margin: EdgeInsets.only(
                right: index == widget.filterItems.length - 1 ? 0 : 6.r,
              ),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : AppColors.white,
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  widget.filterItems[index],
                  style: TextStyle(
                    color: isSelected ? Colors.white : AppColors.primary,
                    fontSize: 16.sp,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
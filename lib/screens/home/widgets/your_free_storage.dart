import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_drive/core/app_strings.dart';
import 'package:g_drive/core/utils/app_assets.dart';
import 'package:g_drive/core/utils/app_colors.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class YourFreeStorage extends StatelessWidget {
  const YourFreeStorage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 26.sp),
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(26.r),
          ),
          child: Column(
            children: [
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    color: AppColors.withe,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  padding: EdgeInsets.all(4.sp),
                  child: Image.asset(AppAssets.icon),
                ),
                title: Text(
                  AppStrings.freeStorage,
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.withe),
                ),
                subtitle: Text.rich(TextSpan(children: [
                  TextSpan(
                    text: '7,5 Gb / ',
                    style: TextStyle(fontSize: 16.sp, color: AppColors.withe),
                  ),
                  TextSpan(
                    text: '15 Gb',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.withe.withOpacity(.6),
                    ),
                  ),
                ])),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.sp),
                child: LinearPercentIndicator(
                  lineHeight: 8.h,
                  barRadius: Radius.circular(20.r),
                  backgroundColor: AppColors.blue2,
                  percent: .5,
                  progressColor: AppColors.withe,
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 16.sp),
            decoration: BoxDecoration(
              color: AppColors.blue2,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(26.r),
                bottomLeft: Radius.circular(26.r),
              ),
            ),
            child: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.withe,
            ),
          ),
        )
      ],
    );
  }
}

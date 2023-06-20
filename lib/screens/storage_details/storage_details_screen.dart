import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:g_drive/core/utils/app_assets.dart';
import 'package:g_drive/core/utils/app_colors.dart';
import 'package:g_drive/core/utils/app_const.dart';
import 'package:g_drive/core/utils/app_strings.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class StorageDetailsScreen extends StatelessWidget {
  const StorageDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.storageDetails),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.text1,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppAssets.options,
                color: AppColors.text1,
              ))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(
          top: 14.sp,
          left: 14.sp,
          right: 14.sp,
        ),
        children: [
          CircleAvatar(
            radius: 60.sp,
          ),
          SizedBox(
            height: 10.sp,
          ),
          Text(
            AppStrings.freeStorage,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.sp, color: AppColors.text1),
          ),
          SizedBox(
            height: 10.sp,
          ),
          Text(
            '7.5 Gb',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.sp,
                color: AppColors.text1,
                fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 10.sp,
          ),
          Text(
            'From Total 15 Gb',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.sp,
              color: AppColors.text1.withOpacity(.8),
            ),
          ),
          SizedBox(
            height: 20.sp,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.blue,
                  minimumSize: Size(double.infinity, 60.sp),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.r))),
              onPressed: () {},
              child: Text(
                AppStrings.upgradeStorage,
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              )),
          SizedBox(
            height: 20.sp,
          ),
          ListBody(
            children: storage
                .map((item) => Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 10.sp,
                              backgroundColor: item.color,
                            ),
                            title: Text(
                              item.title,
                              style: TextStyle(
                                  fontSize: 16.sp, color: AppColors.text2),
                            ),
                            subtitle: Text(
                              item.subTitle,
                              style: TextStyle(
                                  fontSize: 14.sp, color: AppColors.text3),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 100.w,
                              child: LinearPercentIndicator(
                                lineHeight: 10.sp,
                                padding: EdgeInsets.zero,
                                isRTL: true,
                                barRadius: Radius.circular(100.r),
                                backgroundColor: Colors.transparent,
                                progressColor: item.color,
                                percent: item.percent,
                              ),
                            ),
                            SizedBox(
                              height: 5.sp,
                            ),
                            Text(
                              item.size,
                              style:
                                  TextStyle(fontSize: 14.sp, color: item.color),
                            )
                          ],
                        )
                      ],
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}

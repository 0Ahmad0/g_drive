import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:g_drive/core/utils/app_strings.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import 'drawer_listtile.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.sp,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 26.sp,
                  child: Image.asset(AppAssets.icon),
                ),
                title: Text(
                  AppStrings.hey,
                  style: TextStyle(color: AppColors.withe, fontSize: 16.sp),
                ),
                subtitle: Text(
                  'Ahmad Alhariri',
                  style: TextStyle(
                      color: AppColors.withe,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                    onPressed: () {
                      ZoomDrawer.of(context)!.close();
                    },
                    icon: Icon(
                      Icons.close,
                      color: AppColors.withe,
                    )),
              ),
              const Spacer(),
              Column(
                children: [
                  DrawerListTile(
                    onTap: null,
                    icon: AppAssets.recent,
                    text: AppStrings.recent,
                  ),
                  DrawerListTile(
                    icon: AppAssets.star,
                    text: AppStrings.favourite,
                  ),
                  DrawerListTile(
                    icon: AppAssets.trash,
                    text: AppStrings.trash,
                  ),
                  DrawerListTile(
                    icon: AppAssets.notifications,
                    text: AppStrings.notifications,
                  ),
                  DrawerListTile(
                    icon: AppAssets.uploadCloud,
                    text: AppStrings.backups,
                  ),
                  DrawerListTile(
                    icon: AppAssets.settings,
                    text: AppStrings.settings,
                  ),
                  DrawerListTile(
                    icon: AppAssets.help,
                    text: AppStrings.helpAndFeedback,
                  ),
                ],
              ),
              const Spacer(),
              DrawerListTile(
                icon: AppAssets.logOut,
                text: AppStrings.logOut,
              )
            ],
          ),
        ),
      ),
    );
  }
}

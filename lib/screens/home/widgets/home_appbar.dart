import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:g_drive/core/app_strings.dart';
import 'package:g_drive/core/utils/app_assets.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  HomeAppBar({Key? key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.all(12.sp),
        child: InkWell(
          onTap: () {
            print('show Drawer');
          },
          child: SvgPicture.asset(
            AppAssets.appbarIcon,
          ),
        ),
      ),
      title: const Text(AppStrings.myDrive),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.sp),
          child: CircleAvatar(
            child: Image.asset(AppAssets.icon),
          ),
        ),
      ],
    );
  }
}

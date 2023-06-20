import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:g_drive/core/utils/app_strings.dart';
import 'package:oktoast/oktoast.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });

  final String text;
  final String icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap ??
          () => showToast(
                AppStrings.soon,
                context: context,
                dismissOtherToast: true,
                position: ToastPosition.bottom,
                backgroundColor: AppColors.text1,
                radius: 8.r,
                textPadding: EdgeInsets.symmetric(
                  horizontal: 50.sp,
                  vertical: 14.sp,
                ),
              ),
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(icon),
      title: Text(
        text,
        style: TextStyle(fontSize: 16.sp, color: AppColors.withe),
      ),
    );
  }
}

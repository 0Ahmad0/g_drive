import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:g_drive/core/app_strings.dart';
import 'package:g_drive/core/utils/app_assets.dart';
import 'package:g_drive/core/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/home_appbar.dart';
import 'widgets/your_free_storage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.all(14.sp),
        children: [
          searchHomeTextFiled(),
          SizedBox(
            height: 14.sp,
          ),
          YourFreeStorage(),
        ],
      )),
    );
  }

  Widget searchHomeTextFiled() {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(12.r), boxShadow: [
        BoxShadow(
            color: AppColors.shadowColor,
            offset: Offset(0, 4.sp),
            blurRadius: 4.sp)
      ]),
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: AppColors.withe,
            prefixIcon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AppAssets.search),
            ),
            hintText: AppStrings.searchFiles,
            hintStyle: TextStyle(
              fontSize: 16.sp,
              color: AppColors.text3,
            )),
      ),
    );
  }
}

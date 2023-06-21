import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:g_drive/core/utils/app_const.dart';
import 'package:g_drive/core/utils/app_strings.dart';
import 'package:g_drive/core/utils/app_assets.dart';
import 'package:g_drive/core/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../../folder_details/folder_details_screen.dart';

class GridFolders extends StatelessWidget {
  const GridFolders({
    super.key,
    required this.controller,
    this.color,
  });
  final ScrollController controller;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          controller: controller,
          itemCount: folders.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16.sp,
              childAspectRatio: 1.25.sp,
              crossAxisSpacing: 16.sp),
          itemBuilder: (context, index) {
            final folderItem = folders[index];
            return GridContainer(
              folderItem: folderItem,
              color: color,
            );
          }),
    );
  }
}

class GridContainer extends StatelessWidget {
  const GridContainer({
    super.key,
    required this.folderItem,
    this.color,
  });

  final Folders folderItem;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: FolderDetailsScreen(),
                type: PageTransitionType.rightToLeftWithFade));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.sp, vertical: 10.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            // BoxShadow(
            //     color: AppColors.shadowColor,
            //     blurRadius: 4.sp,
            //     blurStyle: BlurStyle.normal,
            //     offset: Offset(0, 4.sp))
          ],
          color: color != null
              ? color!.withOpacity(.16)
              : folderItem.color.withOpacity(.16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: SvgPicture.asset(folderItem.folderIcon),
                trailing: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppAssets.options,
                    color: color ?? folderItem.color,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Text(
                folderItem.folderName,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: color ?? folderItem.color,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Text(
                folderItem.folderCreatedAt,
                style: TextStyle(
                  color: color ?? folderItem.color,
                  fontSize: 12.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

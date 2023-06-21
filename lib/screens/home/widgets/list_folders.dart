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

class ListFolders extends StatelessWidget {
  const ListFolders({
    super.key,
    required this.controller,
  });
  final ScrollController controller;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          controller: controller,
          itemCount: folders.length,
          itemBuilder: (context, index) {
            final folderItem = folders[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: FolderDetailsScreen(),
                        type: PageTransitionType.leftToRightWithFade));
              },
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 14.sp, vertical: 10.sp),
                margin: EdgeInsets.symmetric(vertical: 10.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  boxShadow: [
                    // BoxShadow(
                    //     color: AppColors.shadowColor,
                    //     blurRadius: 4.sp,
                    //     blurStyle: BlurStyle.normal,
                    //     offset: Offset(0, 4.sp))
                  ],
                  color: folderItem.color.withOpacity(.16),
                ),
                child: Row(
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
                            color: folderItem.color,
                          ),
                        ),
                        title: Text(
                          folderItem.folderName,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: folderItem.color,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          folderItem.folderCreatedAt,
                          style: TextStyle(
                            color: folderItem.color,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

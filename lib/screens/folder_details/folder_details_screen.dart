import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:g_drive/core/utils/app_assets.dart';
import 'package:g_drive/core/utils/app_colors.dart';

import '../home/widgets/grid_folders.dart';
import '../home/widgets/list_folders.dart';

class FolderDetailsScreen extends StatelessWidget {
  FolderDetailsScreen({Key? key}) : super(key: key);
  bool isGrid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            IconButton(
              icon: SvgPicture.asset(
                AppAssets.options,
                color: AppColors.withe,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ]),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(14.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  AppAssets.mainFolder,
                ),
                SizedBox(
                  height: 10.sp,
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    'Web Design',
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: AppColors.withe,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 4.sp),
                    child: Text(
                      '32 items  -  150 Mb',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.withe.withOpacity(.8),
                      ),
                    ),
                  ),
                  trailing: Container(
                    padding: EdgeInsets.all(14.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.sp),
                      color: AppColors.blue2,
                    ),
                    child: SvgPicture.asset(
                      AppAssets.search,
                      color: AppColors.withe,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),
              ],
            ),
          ),
          StatefulBuilder(builder: (context, setState) {
            return DraggableScrollableSheet(
                initialChildSize: .75,
                minChildSize: .75,
                builder: (context, controller) {
                  return Container(
                    padding: EdgeInsets.only(
                      left: 14.sp,
                      top: 14.sp,
                      right: 14.sp,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.withe,
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: AppColors.text2,
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              setState(() {
                                isGrid = !isGrid;
                              });
                            },
                            icon: SvgPicture.asset(isGrid
                                ? AppAssets.menuGrid
                                : AppAssets.menuList),
                          ),
                        ),
                        if (isGrid) ...[
                          GridFolders(
                            controller: controller,
                            color: AppColors.blue,
                          ),
                        ],
                        if (!isGrid) ...[
                          ListFolders(controller: controller),
                        ]
                      ],
                    ),
                  );
                });
          }),
        ],
      ),
    );
  }
}

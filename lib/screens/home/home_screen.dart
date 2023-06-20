import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:g_drive/core/utils/app_const.dart';
import 'package:g_drive/core/utils/app_strings.dart';
import 'package:g_drive/core/utils/app_assets.dart';
import 'package:g_drive/core/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/grid_folders.dart';
import 'widgets/home_appbar.dart';
import 'widgets/list_folders.dart';
import 'widgets/your_free_storage.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  bool isGrid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.blue,
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
      appBar: HomeAppBar(),
      body: Stack(
        children: [
          Column(
            children: [
              searchHomeTextFiled(),
              SizedBox(
                height: 14.sp,
              ),
              YourFreeStorage(),
              SizedBox(
                height: 14.sp,
              ),
            ],
          ),
          StatefulBuilder(builder: (context, setState) {
            return DraggableScrollableSheet(
                initialChildSize: .6,
                minChildSize: .6,
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
                            AppStrings.myFolders,
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
                          GridFolders(controller: controller),
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

  Widget searchHomeTextFiled() {
    return Container(
      margin: EdgeInsets.all(14.sp),
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

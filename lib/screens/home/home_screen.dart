import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:g_drive/core/utils/app_const.dart';
import 'package:g_drive/core/utils/app_strings.dart';
import 'package:g_drive/core/utils/app_assets.dart';
import 'package:g_drive/core/utils/app_colors.dart';
import 'package:g_drive/screens/home/widgets/home_drawer.dart';
import 'package:g_drive/screens/home/widgets/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/grid_folders.dart';
import 'widgets/home_appbar.dart';
import 'widgets/list_folders.dart';
import 'widgets/menu_screen.dart';
import 'widgets/your_free_storage.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  bool isGrid = true;
  static final zoomController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: zoomController,
      mainScreen: MainScreen(),
      menuScreen: MenuScreen(),
      borderRadius: 24.0,
      showShadow: true,
      menuScreenWidth: double.infinity,
      shadowLayer1Color: Colors.transparent,
      menuScreenOverlayColor: AppColors.blue,
      menuBackgroundColor: AppColors.blue,
      clipMainScreen: false,
    );
  }
}

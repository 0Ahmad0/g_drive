import 'dart:ui';

import 'package:g_drive/core/utils/app_assets.dart';

import 'package:g_drive/core/utils/app_assets.dart';

import 'package:g_drive/core/utils/app_assets.dart';

import 'package:g_drive/core/utils/app_assets.dart';

import 'package:g_drive/core/utils/app_assets.dart';
import 'package:g_drive/core/utils/app_colors.dart';

const KScaffoldBackGroundColor = Color(0xffF2F5F8);

List<Folders> folders = [
  Folders(
      folderIcon: AppAssets.folder4,
      folderName: 'Web Design',
      folderCreatedAt: '22 Dec 2020',
      color: AppColors.red),
  Folders(
      folderIcon: AppAssets.folder3,
      folderName: 'Illustrations',
      folderCreatedAt: '22 Dec 2020',
      color: AppColors.yellow),
  Folders(
      folderIcon: AppAssets.folder,
      folderName: 'App Design',
      folderCreatedAt: '22 Dec 2020',
      color: AppColors.blue),
  Folders(
      folderIcon: AppAssets.folder5,
      folderName: 'Font collections',
      folderCreatedAt: '22 Dec 2020',
      color: AppColors.green),
  Folders(
      folderIcon: AppAssets.folder4,
      folderName: ' My Portfolio',
      folderCreatedAt: '22 Dec 2020',
      color: AppColors.red),
  Folders(
      folderIcon: AppAssets.folder,
      folderName: 'Pattern',
      folderCreatedAt: '22 Dec 2020',
      color: AppColors.blue),
];

class Folders {
  final String folderIcon;
  final String folderName;
  final String folderCreatedAt;
  final Color color;

  Folders({
    required this.folderIcon,
    required this.folderName,
    required this.folderCreatedAt,
    required this.color,
  });
}

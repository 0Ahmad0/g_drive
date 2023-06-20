import 'dart:ui';

import 'package:g_drive/core/utils/app_assets.dart';

import 'package:g_drive/core/utils/app_assets.dart';

import 'package:g_drive/core/utils/app_assets.dart';

import 'package:g_drive/core/utils/app_assets.dart';

import 'package:g_drive/core/utils/app_assets.dart';
import 'package:g_drive/core/utils/app_colors.dart';
import 'package:g_drive/core/utils/app_strings.dart';

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

List<Storage> storage = [
  Storage(
      title: AppStrings.images,
      subTitle: '2,300 images',
      size: '1.5 GB',
      color: AppColors.blue,
      percent: .9),
  Storage(
      title: AppStrings.videos,
      subTitle: '150 Videos',
      size: '1.2 GB',
      color: AppColors.yellow,
      percent: .75),
  Storage(
      title: AppStrings.apps,
      subTitle: '150 Apps',
      size: '1.0 GB',
      color: AppColors.green,
      percent: .6),
  Storage(
      title: AppStrings.documents,
      subTitle: '1250 Documents',
      size: '1.0 GB',
      color: AppColors.red,
      percent: .45),
  Storage(
      title: AppStrings.others,
      subTitle: '1.0 GB',
      size: '1.0 GB',
      color: AppColors.text2,
      percent: .2),
];

class Storage {
  final String title;
  final String subTitle;
  final String size;
  final Color color;
  final double percent;

  Storage({
    required this.title,
    required this.subTitle,
    required this.size,
    required this.color,
    required this.percent,
  });
}

import 'package:ev_charging_app/common/constants/app_constants.dart';
import 'package:ev_charging_app/common/constants/asset_constants.dart';
import 'package:ev_charging_app/common/theme/color_theme.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            buildCoverImage(),
            Positioned(
                top: AppConstants.height_120, child: buildProfileImage()),
          ]),
    );
  }

  Widget buildCoverImage() => Container(
        color: ColorTheme.grey,
        child: Image.asset(
          AssetConstants.splashImage,
          width: double.infinity,
          height: AppConstants.height_200,
          fit: BoxFit.cover,
        ),
      );
  Widget buildProfileImage() => CircleAvatar(
        radius: AppConstants.radius_80,
        backgroundColor: ColorTheme.grey,
        backgroundImage: const AssetImage(AssetConstants.evLogo),
      );
}

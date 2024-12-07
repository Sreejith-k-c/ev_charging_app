import 'package:ev_charging_app/common/constants/app_constants.dart';
import 'package:ev_charging_app/common/constants/asset_constants.dart';
import 'package:ev_charging_app/common/theme/color_theme.dart';
import 'package:flutter/material.dart';

class WelcomeTwo extends StatelessWidget {
  const WelcomeTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(AssetConstants.welcomeTwo),
            fit: BoxFit.cover,
          )),
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              AppConstants.padding_20,
              AppConstants.padding_0,
              AppConstants.padding_0,
              AppConstants.padding_0,
            ),
            child: Container(
              alignment: const Alignment(0, 0.50),
              child: Text(
                AppConstants.letsFindaChargeStation,
                style: TextStyle(
                    color: ColorTheme.white,
                    fontSize: AppConstants.fontSize_70,
                    fontWeight: FontWeight.w900),
              ),
            ),
          )),
    );
  }
}

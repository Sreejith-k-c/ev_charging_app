import 'package:ev_charging_app/common/constants/app_constants.dart';
import 'package:ev_charging_app/common/constants/asset_constants.dart';
import 'package:flutter/material.dart';

class WelcomeThree extends StatelessWidget {
  const WelcomeThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetConstants.welcomeThree),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              AppConstants.padding_20,
              AppConstants.padding_0,
              AppConstants.padding_0,
              AppConstants.padding_0,
            ),
          )),
    );
  }
}

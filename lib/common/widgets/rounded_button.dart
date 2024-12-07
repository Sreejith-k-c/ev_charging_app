import 'package:ev_charging_app/common/constants/app_constants.dart';
import 'package:ev_charging_app/common/theme/color_theme.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key, required this.text, this.keyboardType});

  final String text;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        width: AppConstants.width_330,
        height: AppConstants.height_50,
        decoration: BoxDecoration(
          color: ColorTheme.mainClr,
          borderRadius: BorderRadius.circular(AppConstants.borderRadius_100),
        ),
        child: Padding(
          padding: EdgeInsets.all(AppConstants.padding_14),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: AppConstants.fontSize_18,
                fontWeight: FontWeight.w400,
                color: ColorTheme.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

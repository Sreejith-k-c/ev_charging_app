import 'package:ev_charging_app/common/constants/app_constants.dart';
import 'package:ev_charging_app/common/theme/color_theme.dart';
import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields({
    super.key,
    this.textSize,
    this.textFontWeight,
    this.textColor,
    this.textEditingController,
    this.hintText,
    this.keyboardType,
    this.text,
  });

  final double? textSize;
  final FontWeight? textFontWeight;
  final Color? textColor;
  final TextEditingController? textEditingController;
  final String? hintText;
  final TextInputType? keyboardType;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
              AppConstants.padding_20,
              AppConstants.padding_0,
              AppConstants.padding_20,
              AppConstants.padding_0,
            ),
            child: Container(
              height: AppConstants.height_54,
              width: AppConstants.width_350,
              decoration: BoxDecoration(
                color: ColorTheme.white,
                borderRadius:
                    BorderRadius.circular(AppConstants.borderRadius_6),
              ),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppConstants.padding_10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (text != null)
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                          AppConstants.padding_0,
                          AppConstants.padding_8,
                          AppConstants.padding_0,
                          AppConstants.padding_0,
                        ),
                        child: Text(
                          text!,
                          style: TextStyle(
                            fontSize: AppConstants.fontSize_12,
                            fontWeight: FontWeight.w500,
                            color: ColorTheme.black,
                          ),
                        ),
                      ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                          AppConstants.padding_0,
                          AppConstants.padding_0,
                          AppConstants.padding_0,
                          AppConstants.padding_5,
                        ),
                        child: TextFormField(
                          controller: textEditingController,
                          keyboardType: keyboardType,
                          decoration: InputDecoration(
                            hintText: hintText,
                            hintStyle: TextStyle(
                              fontSize: AppConstants.fontSize_14,
                              fontWeight: FontWeight.w400,
                              color: ColorTheme.grey,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

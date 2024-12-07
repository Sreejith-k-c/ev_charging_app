import 'package:ev_charging_app/common/constants/app_constants.dart';
import 'package:ev_charging_app/common/constants/asset_constants.dart';
import 'package:ev_charging_app/common/theme/color_theme.dart';
import 'package:ev_charging_app/common/widgets/rounded_button.dart';
import 'package:ev_charging_app/common/widgets/textfields.dart';
import 'package:ev_charging_app/views/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:ev_charging_app/views/sign_up_screen/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetConstants.splashImage),
                fit: BoxFit.cover)),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: AppConstants.height_20),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    AppConstants.padding_10,
                    AppConstants.padding_0,
                    AppConstants.padding_10,
                    AppConstants.padding_20,
                  ),
                  child: Text(
                    AppConstants.logIn,
                    style: TextStyle(
                      fontSize: AppConstants.fontSize_60,
                      fontWeight: FontWeight.bold,
                      color: ColorTheme.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(AppConstants.padding_10),
                  child: Container(
                    height: AppConstants.height_398,
                    width: AppConstants.width_398,
                    decoration: BoxDecoration(
                        color: ColorTheme.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(
                            AppConstants.borderRadius_20)),
                    child: Column(
                      children: [
                        SizedBox(height: AppConstants.height_30),
                        Text(
                          AppConstants.pleaseLogin,
                          style: TextStyle(
                            fontSize: AppConstants.fontSize_24,
                            fontWeight: FontWeight.bold,
                            color: ColorTheme.mainClr,
                          ),
                        ),
                        SizedBox(height: AppConstants.height_20),
                        TextFields(
                          hintText: AppConstants.name,
                          text: AppConstants.userName,
                          textColor: ColorTheme.black,
                          textSize: AppConstants.fontSize_12,
                          textFontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          height: AppConstants.height_15,
                        ),
                        TextFields(
                          hintText: AppConstants.pwd,
                          text: AppConstants.password,
                          textColor: ColorTheme.black,
                          textSize: AppConstants.fontSize_12,
                          textFontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          height: AppConstants.height_15,
                        ),
                        Text(
                          AppConstants.forgotPassword,
                          style: TextStyle(
                            fontSize: AppConstants.fontSize_14,
                            fontWeight: FontWeight.w400,
                            color: ColorTheme.white,
                          ),
                        ),
                        SizedBox(
                          height: AppConstants.height_20,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const BottomNavBar()));
                            },
                            child:
                                const RoundedButton(text: AppConstants.login)),
                        SizedBox(
                          height: AppConstants.height_20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignupScreen()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                AppConstants.imAnewuser,
                                style: TextStyle(
                                  fontSize: AppConstants.fontSize_14,
                                  fontWeight: FontWeight.w400,
                                  color: ColorTheme.white,
                                ),
                              ),
                              SizedBox(
                                width: AppConstants.width_5,
                              ),
                              Text(
                                AppConstants.signup,
                                style: TextStyle(
                                  fontSize: AppConstants.fontSize_14,
                                  fontWeight: FontWeight.w400,
                                  color: ColorTheme.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

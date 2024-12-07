import 'package:ev_charging_app/common/constants/app_constants.dart';
import 'package:ev_charging_app/common/constants/asset_constants.dart';
import 'package:ev_charging_app/common/theme/color_theme.dart';
import 'package:ev_charging_app/common/widgets/rounded_button.dart';
import 'package:ev_charging_app/common/widgets/textfields.dart';
import 'package:ev_charging_app/views/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    AppConstants.padding_10,
                    AppConstants.padding_0,
                    AppConstants.padding_10,
                    AppConstants.padding_20,
                  ),
                  child: Text(
                    AppConstants.signUp,
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
                    height: AppConstants.height_500,
                    width: AppConstants.width_398,
                    decoration: BoxDecoration(
                        color: ColorTheme.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(
                            AppConstants.borderRadius_20)),
                    child: Column(
                      children: [
                        SizedBox(height: AppConstants.height_30),
                        Text(
                          AppConstants.pleaseEnterDetails,
                          style: TextStyle(
                            fontSize: AppConstants.fontSize_18,
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
                          hintText: AppConstants.pNumber,
                          text: AppConstants.phone,
                          textColor: ColorTheme.black,
                          textSize: AppConstants.fontSize_12,
                          textFontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          height: AppConstants.height_15,
                        ),
                        TextFields(
                          hintText: AppConstants.enterEmail,
                          text: AppConstants.email,
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
                          height: AppConstants.height_20,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()));
                            },
                            child:
                                const RoundedButton(text: AppConstants.signup)),
                        SizedBox(
                          height: AppConstants.height_20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          child: Text(
                            AppConstants.haveAccount,
                            style: TextStyle(
                              fontSize: AppConstants.fontSize_14,
                              fontWeight: FontWeight.w400,
                              color: ColorTheme.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

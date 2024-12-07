import 'dart:async';
import 'package:ev_charging_app/common/constants/app_constants.dart';
import 'package:ev_charging_app/common/constants/asset_constants.dart';
import 'package:ev_charging_app/common/theme/color_theme.dart';
import 'package:ev_charging_app/views/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _imageSlideAnimation;
  late Animation<Offset> _textSlideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    _imageSlideAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: const Offset(0.0, -1.0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _textSlideAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: const Offset(0.0, 1.0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _fadeAnimation = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _startAnimationsAndNavigate();
  }

  void _startAnimationsAndNavigate() {
    _animationController.forward();

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const WelcomeScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetConstants.splashImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideTransition(
                position: _imageSlideAnimation,
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: ClipOval(
                    child: Image.asset(
                      AssetConstants.evLogo,
                      height: AppConstants.height_130,
                      width: AppConstants.height_130,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SlideTransition(
                position: _textSlideAnimation,
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: Column(
                    children: [
                      Text(
                        AppConstants.welcomeTo,
                        style: TextStyle(
                          fontSize: AppConstants.fontSize_16,
                          fontWeight: FontWeight.w600,
                          color: ColorTheme.white,
                        ),
                      ),
                      Text(
                        AppConstants.evChargingApp,
                        style: TextStyle(
                          fontSize: AppConstants.fontSize_30,
                          fontWeight: FontWeight.bold,
                          color: ColorTheme.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

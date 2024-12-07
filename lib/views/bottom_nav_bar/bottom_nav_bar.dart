import 'package:ev_charging_app/common/constants/app_constants.dart';
import 'package:ev_charging_app/common/theme/color_theme.dart';
import 'package:ev_charging_app/views/home_screen/home_screen.dart';
import 'package:ev_charging_app/views/profile_screen/profile_screen.dart';
import 'package:ev_charging_app/views/view_booking_screen/view_booking_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Map<String, dynamic>> bottomButtons = [
    {'icon': Icons.home, 'label': AppConstants.home},
    {'icon': Icons.book, 'label': AppConstants.viewBooking},
    {'icon': Icons.person, 'label': AppConstants.profile},
  ];

  final List<Widget> _pages = [
    const HomeScreen(),
    const ViewBookingScreen(),
    const ProfileScreen(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pages[selectedIndex],
          Positioned(
            left: 10,
            right: 10,
            bottom: 10,
            child: Container(
              alignment: Alignment.center,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: ColorTheme.white,
                boxShadow: [
                  BoxShadow(
                    color: ColorTheme.grey.withOpacity(0.2),
                    offset: const Offset(3, -3),
                    blurRadius: 4,
                  ),
                  BoxShadow(
                    color: ColorTheme.grey.withOpacity(0.1),
                    offset: const Offset(-3, 3),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  bottomButtons.length,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          bottomButtons[index]['icon'],
                          size: AppConstants.size_32,
                          color: selectedIndex == index
                              ? ColorTheme.mainClr
                              : ColorTheme.grey,
                        ),
                        Text(
                          bottomButtons[index]['label'],
                          style: TextStyle(
                            fontSize: AppConstants.fontSize_16,
                            fontWeight: FontWeight.normal,
                            color: selectedIndex == index
                                ? ColorTheme.mainClr
                                : ColorTheme.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

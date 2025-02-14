import 'package:ev_charging_app/views/login_screen/login_screen.dart';
import 'package:ev_charging_app/views/welcome_screen/welcome_screen_one.dart';
import 'package:ev_charging_app/views/welcome_screen/welcome_screen_three.dart';
import 'package:ev_charging_app/views/welcome_screen/welcome_screen_two.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: const [
            WelcomeOne(),
            WelcomeTwo(),
            WelcomeThree(),
          ],
        ),
        Container(
            alignment: const Alignment(0, 0.85),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.26),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: () {
                          _controller.jumpToPage(2);
                        },
                        child: const Text(
                          "Skip",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )),
                    SmoothPageIndicator(controller: _controller, count: 3),
                    onLastPage
                        ? GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()));
                            },
                            child: const Text(
                              "Done",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ))
                        : GestureDetector(
                            onTap: () {
                              _controller.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.linear);
                            },
                            child: const Text(
                              "Next",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ))
                  ],
                ),
              ),
            ))
      ],
    ));
  }
}

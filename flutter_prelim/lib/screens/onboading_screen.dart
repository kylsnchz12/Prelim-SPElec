import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF19191B),
      extendBody: true,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                top: screenHeight * 0.1,
                left: -88,
                child: Container(
                  height: 166,
                  width: 166,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFFE53BB)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.transparent,
                    ),
                  ),
                )),
            Positioned(
                top: screenHeight * 0.3,
                right: -110,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF09FBD3)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.transparent,
                    ),
                  ),
                )),
            SafeArea(
                child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.07,
                ),
                Container(
                  width: 328,
                  height: 328,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("images/image81.png"),
                          fit: BoxFit.cover),
                      border: GradientBoxBorder(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              const Color(0xFFFE53BB).withOpacity(0.4),
                              const Color(0xFFFE53BB).withOpacity(0),
                              const Color(0xFF09FBD3).withOpacity(0.1),
                              const Color(0xFF09FBD3).withOpacity(0.4)
                            ],
                            stops: const [
                              0.2,
                              0.4,
                              0.6,
                              1
                            ]),
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(200)),
                ),
                SizedBox(height: screenHeight * 0.09),
                Text('Watch movies in\nvirtual reality',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.white.withOpacity(0.85),
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(height: screenHeight * 0.03),
                Text('Download and watch offline\nwherever you are',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.75),
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(height: screenHeight * 0.03),
                Container(
                  width: 160,
                  height: 38,
                  decoration: BoxDecoration(
                      border: const GradientBoxBorder(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFFFE53BB), Color(0xFF09FBD3)],
                        ),
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(200)),
                  child: Stack(children: [
                    const Center(
                      child: Text(
                        'Sign up',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                    Container(
                      width: 160,
                      height: 38,
                      decoration: BoxDecoration(
                          border: GradientBoxBorder(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  const Color(0xFFFE53BB).withOpacity(0.3),
                                  const Color(0xFF09FBD3).withOpacity(0.4),
                                ]),
                            width: 20,
                          ),
                          borderRadius: BorderRadius.circular(200)),
                    ),
                  ]),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return Container(
                      height: 7,
                      width: 7,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index == 0
                              ? const Color(0xFF08F7FE)
                              : Colors.white.withOpacity(0.2)),
                    );
                  }),
                ),
                SizedBox(height: screenHeight * 0.02)
              ],
            ))
          ],
        ),
      ),
    );
  }
}

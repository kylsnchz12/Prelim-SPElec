import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Color(0xFF19191B),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: screenHeight * 0.5,
                width: screenWidth,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/imageEternals.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
                top: screenHeight * 0.05,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 21,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 44,
                        width: 44,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 3, color: Colors.white)),
                        child: SvgPicture.asset('assets/Icon/back.svg'),
                      ),
                      Container(
                        height: 44,
                        width: 44,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 3, color: Colors.white)),
                        child: SvgPicture.asset('assets/Icon/menu.svg'),
                      )
                    ],
                  ),
                )),
            Positioned(
                right: 9,
                top: screenHeight * 0.42,
                child: Container(
                  width: 60,
                  height: 60,
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          colors: [Color(0xFFfe53bb), Color(0xFF09fbd3)])),
                  child: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFF767680)),
                    child: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

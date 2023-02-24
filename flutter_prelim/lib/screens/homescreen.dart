import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glassmorphism/glassmorphism.dart';

import '../components/mask_image.dart';
import '../components/search_field.dart';
import '../models/movies.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF19191B),
      extendBody: true,
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            Positioned(
                top: -100,
                left: -100,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFF09FBD3).withOpacity(0.5)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.transparent,
                    ),
                  ),
                )),
            Positioned(
                top: screenHeight * 0.4,
                right: -88,
                child: Container(
                  height: 166,
                  width: 166,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFFFE53BB).withOpacity(0.5)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                    child: Container(
                      height: 166,
                      width: 166,
                      color: Colors.transparent,
                    ),
                  ),
                )),
            Positioned(
                bottom: -100,
                left: -100,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFF08F7FE).withOpacity(0.5)),
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
                bottom: false,
                child: ListView(
                  primary: true,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      "What would you\nlike to watch?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 30),
                    const SearchFieldWidget(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'New Movies',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                    const SizedBox(
                      height: 37,
                    ),
                    SizedBox(
                      height: 160,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: newMovies.length,
                        itemBuilder: ((context, index) {
                          String mask;
                          if (index == 0) {
                            mask = 'assets/ masks/mask_firstIndex.png';
                          } else if (index == newMovies.length - 1) {
                            mask = 'assets/ masks/mask_lastIndex.png';
                          } else {
                            mask = 'assets/ masks/mask.png';
                          }
                          return GestureDetector(
                            child: Container(
                              margin:
                                  EdgeInsets.only(left: index == 0 ? 20 : 0),
                              height: 160,
                              width: 142,
                              child: MaskedImage(
                                asset: newMovies[index].moviePoster,
                                mask: mask,
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Upcoming Movies',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                    const SizedBox(
                      height: 37,
                    ),
                    SizedBox(
                      height: 160,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: upcomingMovies.length,
                        itemBuilder: ((context, index) {
                          String mask;
                          if (index == 0) {
                            mask = 'assets/ masks/mask_firstIndex.png';
                          } else if (index == newMovies.length - 1) {
                            mask = 'assets/ masks/mask_lastIndex.png';
                          } else {
                            mask = 'assets/ masks/mask.png';
                          }
                          return GestureDetector(
                            child: Container(
                              margin:
                                  EdgeInsets.only(left: index == 0 ? 20 : 0),
                              height: 160,
                              width: 142,
                              child: MaskedImage(
                                asset: upcomingMovies[index].moviePoster,
                                mask: mask,
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    )
                  ],
                ))
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 64,
        width: 64,
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: [
              const Color(0xFFFE53BB).withOpacity(0.2),
              const Color(0xFF09FBD3).withOpacity(0.2)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Container(
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: [Color(0xFFFE53BB), Color(0xFF09FBD3)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: RawMaterialButton(
            onPressed: () {},
            shape: const CircleBorder(),
            fillColor: const Color(0xff404c57),
            child: SvgPicture.asset('assets/Icon/plus.svg'),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: GlassmorphicContainer(
        width: screenWidth,
        height: 92,
        borderRadius: 0,
        linearGradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFFFE53BB).withOpacity(0.1),
              const Color(0xFF09FBD3).withOpacity(0.1)
            ]),
        border: 0,
        blur: 30,
        borderGradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFE53BB), Color(0xFF09FBD3)]),
        child: BottomAppBar(
          color: Colors.transparent,
          notchMargin: 4,
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/Icon/home.svg'),
                )),
                Expanded(
                    child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/Icon/watch.svg'),
                )),
                const Expanded(
                  child: Text(' '),
                ),
                Expanded(
                    child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/Icon/stack.svg'),
                )),
                Expanded(
                    child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/Icon/download.svg'),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

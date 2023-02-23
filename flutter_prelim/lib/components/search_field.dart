import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({super.key, required this.padding});

  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          color: const Color(0xFF7676801F).withOpacity(0.12),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 9,
            ),
            SvgPicture.asset('assets/Icon/magnifyingglass.svg',
                height: 17, width: 17, fit: BoxFit.contain),
            const SizedBox(
              width: 8,
            ),
            Expanded(
                child: TextField(
              style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 17,
                  letterSpacing: -0.41),
              decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 17,
                    letterSpacing: -0.41,
                  )),
            )),
            const SizedBox(
              width: 8,
            ),
            SvgPicture.asset('assets/Icon/microphone.svg'),
            const SizedBox(
              width: 8,
            ),
          ],
        ),
      ),
    );
  }
}

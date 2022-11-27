import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

horizonteList({
  required String firstCourseImage,
  String? secondCourseImage,
  required String courseHeadLine,
  required String firstCourseTitle,
  String? secondCourseTitle,
  required int startColor,
  required int endColor,
}) {
  return Padding(
    padding: const EdgeInsets.only(
      right: 26,
    ),
    child: Container(
      height: 349,
      width: 246,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: const Alignment(1, 0),
          colors: [
            Color(startColor),
            Color(startColor),
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 15,
            left: 11,
            child: Container(
              height: 39,
              width: 115,
              decoration: BoxDecoration(
                color: const Color(0xFFAFA8EE),
                borderRadius: BorderRadius.circular(36),
              ),
              child: Center(
                child: Text(
                  courseHeadLine,
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

            ),
          ),
          Positioned(
            top: 26+15+39,
            left: 14,
            child: Text(
              firstCourseTitle,
              style: GoogleFonts.roboto(
                color:Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          Positioned(
            top: 31+80,
            left: 14,
            child: Text(
              secondCourseTitle!,
              style: GoogleFonts.roboto(
                color:Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          Positioned(
            top:192,
            left:100,
            child:SvgPicture.asset(
              secondCourseImage!,
            ),
          ),
          Positioned(
            top:70,
            left:37,
            child:Image.asset(
              firstCourseImage,
              scale: 2,
            ),
          ),

        ],
      ),
    ),
  );
}

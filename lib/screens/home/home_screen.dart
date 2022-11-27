import 'package:figma_to_flutter/components/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          children:
          [
            Padding(
              padding: const EdgeInsets.only(
                top: 55,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text(
                    'Online',
                    style: GoogleFonts.roboto(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Text(
                    'Master Class',
                    style: GoogleFonts.roboto(
                      fontSize: 36,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              height: 349,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>horizonteList(
                  startColor: 0xFF9288E4,
                  endColor: 0xFF534EA7,
                  firstCourseTitle: 'UI/UX DESIGNER',
                  secondCourseTitle: 'BEGINNER',
                  courseHeadLine: 'Recommended',
                  firstCourseImage: 'assets/images/1.png',
                  secondCourseImage: 'assets/images/2.svg',
                ),
                itemCount: 3,

              ),
            ),
            const SizedBox(
              height: 34,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text(
                  'Free online class',
                  style: GoogleFonts.roboto(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                Text(
                  'from over 80 Lectures',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF9C9A9A),
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}

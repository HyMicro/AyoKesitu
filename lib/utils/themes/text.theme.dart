import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme baseStyle = TextTheme(
  // display
  displayLarge: GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
    color: const Color(0xFF333333),
    letterSpacing: 0.1,
    height: 1.h,
  ),
  displayMedium: GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 18.sp,
    color: const Color(0xFF333333),
    letterSpacing: 0.1,
    height: 1.h,
  ),
  displaySmall: GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    color: const Color(0xFF333333),
    letterSpacing: 0.1,
    height: 1.h,
  ),

  // headline
  headlineLarge: GoogleFonts.poppins(
    fontWeight: FontWeight.w800,
    fontSize: 15.sp,
    color: const Color(0xFF333333),
    letterSpacing: 0.1,
    height: 1.2,
  ),
  headlineMedium: GoogleFonts.poppins(
    fontWeight: FontWeight.w800,
    fontSize: 14.sp,
    color: const Color(0xFF333333),
    letterSpacing: 0.1,
    height: 1.h,
  ),
  headlineSmall: GoogleFonts.poppins(
    fontWeight: FontWeight.w800,
    fontSize: 13.sp,
    color: const Color(0xFF333333),
    letterSpacing: 0.1,
    height: 1.h,
  ),

  // title
  titleLarge: GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 15.sp,
    color: const Color(0xFF333333),
    letterSpacing: 0.1,
    height: 1.h,
  ),
  titleMedium: GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    color: const Color(0xFF333333),
    letterSpacing: 0.1,
    height: 1.h,
  ),
  titleSmall: GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 13.sp,
    color: const Color(0xFF333333),
    letterSpacing: 0.1,
    height: 1.h,
  ),

  // body
  bodyLarge: GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 15.sp,
    color: const Color(0xFF333333),
    letterSpacing: 0.1,
    height: 1.h,
  ),
  bodyMedium: GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: const Color(0xFF333333),
    letterSpacing: 0.1,
    height: 1.h,
  ),
  bodySmall: GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 13.sp,
    color: const Color(0xFF333333),
    letterSpacing: 0.1,
    height: 1.h,
  ),

  // label
  labelLarge: GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 13.sp,
    color: const Color(0xFF333333),
    letterSpacing: 0.1,
    height: 1.h,
  ),
  labelMedium: GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: const Color(0xFF333333),
    letterSpacing: 0.1,
    height: 1.h,
  ),
  labelSmall: GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 11.sp,
    color: const Color(0xFF333333),
    letterSpacing: 0.1,
    height: 1.h,
  ),
);

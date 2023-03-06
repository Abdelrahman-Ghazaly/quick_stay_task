import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle getButtonTextStyle(Color color) => GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: color,
    );

TextStyle getTitleStyle() => GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    );

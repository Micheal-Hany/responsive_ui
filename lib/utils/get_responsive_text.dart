import 'package:flutter/material.dart';

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScalefactor(context);
  double responsiveFontSize = scaleFactor * fontSize;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScalefactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  }
  if (width < 900) {
    return width / 700;
  }
  return width / 1000;
}
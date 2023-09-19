import 'package:flutter/material.dart';
import 'package:listimator/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray400,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineOnSecondary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onSecondary,
          width: 2.h,
        ),
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;

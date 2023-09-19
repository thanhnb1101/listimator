import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge17 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 17.fSize,
      );
  static get bodyLargeBluegray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 18.fSize,
      );
  static get bodyLargeSurfaceVariant => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.surfaceVariant,
        fontSize: 17.fSize,
      );
  // Headline text style
  static get headlineSmallSurfaceVariant =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.surfaceVariant,
      );
  // Title text style
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSurfaceVariant => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.surfaceVariant,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}

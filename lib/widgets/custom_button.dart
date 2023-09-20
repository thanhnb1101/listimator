import 'package:flutter/material.dart';
import 'package:listimator/core/app_export.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;

  CustomButton({required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        decoration: BoxDecoration(
          border: Border.all(color: theme.colorScheme.primary, width: 2.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Text(
            buttonText,
            style: CustomTextStyles.titleMediumPrimary,
          )
          ],
        ),
      ),
    );
  }
}
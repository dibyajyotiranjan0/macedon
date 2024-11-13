import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Widget customElevatedButton(
    {required BuildContext context,
    required Widget buttonname,
    Function()? onpressed}) {
  return Container(
      height: 48,
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFE6D0AE),
            Color(0xFFD1AE7E)
            // A secondary color for the gradient
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // stops: [0.5, 1.0],
        ),
        borderRadius: BorderRadius.circular(21),
      ),
      child: ElevatedButton(
        onPressed: onpressed,
        child: buttonname,
      ));
}

import 'package:flutter/material.dart';

navigation(BuildContext context, widget) {
  return Navigator.push(
      context, MaterialPageRoute(builder: (context) => widget));
}

navigationReplace(BuildContext context, widget) {
  return Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => widget));
}

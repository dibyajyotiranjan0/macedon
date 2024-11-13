import 'package:flutter/material.dart';
import 'package:macedon/static/color.dart';

Widget CustomTextField(
    {String? labelTest,
    String? hintText,
    dynamic prefix,
    TextInputType? keyboard,
    TextEditingController? conteroller}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      SizedBox(
        height: 55,
        child: TextFormField(
            cursorColor: Colo.black,
            controller: conteroller,
            // autofocus: true,
            keyboardType: keyboard,
            decoration: InputDecoration(
                hintText: "${hintText ?? ""}",
                alignLabelWithHint: true,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                floatingLabelAlignment: FloatingLabelAlignment.start,
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: prefix,
                // contentPadding: EdgeInsets.only(
                //   bottom: 5,
                //   left: 20,
                // ),
                // labelText: '${labelTest ?? ""}',
                // labelStyle: TextStyle(color: Colo.black, height: 40),
                // label: Transform.translate(
                //   offset: Offset(0, 0),
                //   child: SizedBox(
                //     // height: 40,
                //     child: Text('${labelTest ?? ""}'),
                //   ),
                // ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(50.0),
                //   borderSide: BorderSide.none,
                // ),
                enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(30)), // Square corners
                    borderSide: BorderSide(
                        color: Colo.white, width: 2, style: BorderStyle.solid)),
                focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(30)), // Square corners
                    borderSide: BorderSide(
                        color: Colo.white, width: 2, style: BorderStyle.solid)),
                errorBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(8)), // Square corners
                    borderSide: BorderSide.none),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(8)), // Square corners
                    borderSide: BorderSide.none))),
      ),
      SizedBox(
        height: 30,
      )
    ],
  );
}

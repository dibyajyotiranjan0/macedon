import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget locationAvailableWidget() {
  return Column(
    children: [
      Align(
        alignment: Alignment.center,
        child: Text(
          "Lcation We Provide",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      SizedBox(
        height: 50,
        // width: double.maxFinite,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, ind) {
              return Container(
                // height: 40,
                // width: MediaQuery.of(context).size.width * 1,
                padding: EdgeInsets.only(left: 16, right: 16),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(22)),
                child: Text("Cuttack"),
              );
            }),
      ),
    ],
  );
}

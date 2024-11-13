import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macedon/config/app-url.dart';
import 'package:macedon/screen/sports_channel/widget/amenitycard_widget_screen.dart';

import '../../../view_model/single_center/single_center_viewmodel.dart';

Widget SingleCenterAmenities() {
  return Consumer(builder: (context, ref, child) {
    var singleCenter = ProviderScope.containerOf(context, listen: true)
        .read(singleCenterProvider);
    return singleCenter == null ||
            singleCenter.messages?.data?.Single_Center_Ameties == null
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Amenities",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: singleCenter
                        .messages!.data!.Single_Center_Ameties!.length,
                    itemBuilder: (context, ind) {
                      return AmenityCard(
                        title:
                            "${singleCenter.messages?.data?.Single_Center_Ameties![ind].facilities_name}",
                        icon:
                            "${AppUrl.imageUrl}${singleCenter.messages?.data?.Single_Center_Ameties![ind].image}",
                      );
                    }),
              ),
            ],
          );
  });
}

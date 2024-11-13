import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macedon/config/app-url.dart';
import 'package:macedon/static/color.dart';
import 'package:macedon/view_model/single_center/single_center_viewmodel.dart';

Widget SingleCenterProduct() {
  return Consumer(builder: (context, ref, child) {
    var singleCenter = ProviderScope.containerOf(context, listen: true)
        .read(singleCenterProvider);
    return singleCenter == null ||
            singleCenter.messages?.data?.Single_Center_gallery == null
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Membership Plan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 140,
                width: double.maxFinite,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: singleCenter
                        .messages?.data?.Single_Center_Activity!.length,
                    itemBuilder: (context, ind) {
                      return Card(
                        color: Colo.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 100,
                              width: 120,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0),
                                  ),
                                  child: CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    imageUrl:
                                        '${AppUrl.imageUrl}${singleCenter.messages?.data?.Single_Center_Activity![ind].image}',
                                  )),
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  '${singleCenter.messages?.data?.Single_Center_Activity![ind].service_name}',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          );
  });
}

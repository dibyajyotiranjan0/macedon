import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../static/color.dart';
import '../../../view_model/single_center/single_center_viewmodel.dart';

Widget addressCenter() {
  return Consumer(builder: (context, ref, child) {
    var singleCenter = ProviderScope.containerOf(context, listen: true)
        .read(singleCenterProvider);
    return singleCenter == null ||
            singleCenter.messages?.data?.Single_Center_Data == null
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
              Card(
                color: Colo.white,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.blue),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(width: 8.0),
                          Text(
                              "${singleCenter.messages?.data?.Single_Center_Data?[0].center_name ?? ""}"),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                          "Address :${singleCenter.messages?.data?.Single_Center_Data?[0].address1 ?? ""}"),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              "pincode : ${singleCenter.messages?.data?.Single_Center_Data?[0].pin ?? ""}"),
                          Text(
                              "Contact No : ${singleCenter.messages?.data?.Single_Center_Data?[0].contact_no ?? ""}"),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                          "Email : ${singleCenter.messages?.data?.Single_Center_Data?[0].email ?? ""}"),
                    ],
                  ),
                ),
              ),
            ],
          );
  });
}

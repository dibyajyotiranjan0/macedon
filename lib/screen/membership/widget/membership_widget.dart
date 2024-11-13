import 'package:flutter/material.dart';
import 'package:macedon/static/color.dart';

import '../../../model/macedon_membership/macedon_membership_model.dart';

Widget membershipwidget({required MembershipDtl member}) {
  // print(ProviderContainer()
  //     .read(membershipProvider.notifier)
  //     .macedonMemebershipModel);
  return Container(
    // height: 400,
    padding: EdgeInsets.all(18),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue.shade200,
        boxShadow: [BoxShadow(color: Colo.black, blurRadius: 2)]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(18)),
            child: Text(
                "${member.package_name}")), //${ProviderContainer().read(membershipProvider).messages!.data!.membership_dtl![index].package_name ?? ""}
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "RS ${member.package_price} /-", //${ProviderContainer().read(membershipProvider).messages!.data!.membership_dtl![index].package_price ?? ""}
              style: TextStyle(
                  color: Colo.black, fontSize: 21, fontWeight: FontWeight.w900),
            ),
          ),
        ),
        ListTile(
          // dense: true,
          minVerticalPadding: 0,
          contentPadding: EdgeInsets.zero,
          visualDensity: VisualDensity(horizontal: 0.0, vertical: -4),
          leading: Icon(
            Icons.task_alt_outlined,
            color: Colors.green,
          ),
          title: Text(
              'Package Duraton ${member.package_duration} Days'), //${ProviderContainer().read(membershipProvider).messages!.data!.membership_dtl![index].package_duration ?? ""}
        ),
        ListTile(
          // dense: true,
          minVerticalPadding: 0,
          contentPadding: EdgeInsets.zero,
          visualDensity: VisualDensity(horizontal: 0.0, vertical: -4),
          titleTextStyle: TextStyle(
              color: Colo.black, fontSize: 16, fontWeight: FontWeight.bold),
          leading: Icon(
            Icons.task_alt_outlined,
            color: Colors.green,
          ),
          title: Text(
            'Class Per Week RS ${member.package_price} /-', //${ProviderContainer().read(membershipProvider).messages!.data!.membership_dtl![index].package_price ?? ""}
            // style: TextStyle(color: Colo.black, fontSize: 16),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colo.black,
                disabledBackgroundColor: Colo.white,
                backgroundColor: Colo.white),
            child: Text("Buy Now"),
            onPressed: () {},
          ),
        )
      ],
    ),
  );
}

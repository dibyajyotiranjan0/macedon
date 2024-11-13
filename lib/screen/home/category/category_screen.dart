import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:macedon/config/app-url.dart';
import 'package:macedon/router/navigator_router.dart';
import 'package:macedon/static/color.dart';

import '../../../view_model/home/home_viewmodel.dart';
import '../../sports_channel/sports_category.dart';

Widget CategoryScreen() {
  return Consumer(
      //future: ProviderContainer().read(homeProvider.notifier).homeViewmodel(),
      builder: (context, ref, snapShot) {
    var categoryImage = ProviderScope.containerOf(context, listen: true)
        .read(homeProvider.notifier)
        .homeModel;
    return categoryImage == null ||
            categoryImage.messages?.data?.banner_dtl == null
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Column(
            mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "CATEGORY",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
                ),
              ),
              SizedBox(
                height: 120,
                // width: double.infinity,
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount:
                        categoryImage.messages!.data!.Service_List!.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              context.push("/home/listAllCenter",
                                  extra: {'id': "0"});
                              // navigation(context, GymListItem());
                            },
                            child: Container(
                              height: 80,
                              width: 80,
                              margin: EdgeInsets.only(left: 10, right: 10),
                              // padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colo.blue, width: 2),
                                  shape: BoxShape.circle,
                                  // borderRadius: BorderRadius.circular(50),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: CachedNetworkImageProvider(
                                        '${AppUrl.imageUrl}${categoryImage.messages?.data?.Service_List?[index].image}',
                                      ))),
                            ),
                          ),
                          Text(
                            "${categoryImage.messages?.data?.Service_List?[index].service_master_name}",
                            style: TextStyle(
                                color: Colo.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          )
                        ],
                      );
                    }),
              )
            ],
          );
  });
}

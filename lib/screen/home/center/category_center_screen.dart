import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:macedon/config/app-url.dart';
import 'package:macedon/router/navigator_router.dart';
import 'package:macedon/static/color.dart';
import 'package:macedon/view_model/home/home_viewmodel.dart';

import '../../sports_channel/widget/single_sports_category_detail_screen.dart';

Widget categoryCenterWidget() {
  return Consumer(
      //  future: ProviderContainer().read(homeProvider.notifier).homeViewmodel(),
      builder: (context, ref, snapShot) {
    var product = ProviderScope.containerOf(context, listen: true)
        .read(homeProvider.notifier)
        .homeModel;
    // print(product?.messages?.data?.service_data?[0].CenterDtls);
    return product == null || product.messages?.data?.banner_dtl == null
        ? Center(
            child: CircularProgressIndicator(),
          )
        : ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: product.messages?.data?.service_data?.length,
            itemBuilder: (context, int) {
              return Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 40,
                      child: Text(
                        "${product.messages?.data?.service_data?[int].service_name}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: double.maxFinite,
                    child: ListView.builder(
                        // physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: product.messages?.data?.service_data?[int]
                            .CenterDtls?.length,
                        itemBuilder: (context, ind) {
                          return InkWell(
                            onTap: () {
                              context.push("/home/center", extra: {
                                'id': "0",
                                'centerId': product.messages!.data!
                                    .service_data![int].CenterDtls![ind].id
                              });
                            },
                            child: SizedBox(
                              width: 160,
                              child: Card(
                                color: Colo.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                elevation: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 120,
                                      width: 160,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15.0),
                                            topRight: Radius.circular(15.0),
                                          ),
                                          child: CachedNetworkImage(
                                            fit: BoxFit.cover,
                                            imageUrl:
                                                '${AppUrl.imageUrl}${product.messages?.data?.service_data?[int].CenterDtls?[ind].centerimage}',
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // FittedBox(
                                          // fit: BoxFit.fitHeight,
                                          // child:
                                          Text(
                                            '${product.messages?.data?.service_data?[int].CenterDtls?[ind].center_name}',
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          // ),
                                          // SizedBox(height: 4.0),
                                          ListTile(
                                            visualDensity: VisualDensity(
                                                horizontal: 0, vertical: -4),
                                            dense: true,
                                            contentPadding: EdgeInsets.zero,
                                            titleTextStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                            minLeadingWidth: 10,
                                            horizontalTitleGap: 5,
                                            leading: Icon(
                                              Icons.location_on,
                                              // size: 16.0,
                                              // color: Colors.grey[700],
                                            ),
                                            // SizedBox(width: 4.0),
                                            title: Text(
                                                '${product.messages?.data?.service_data?[int].CenterDtls?[ind].city_name}'),
                                            // ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              );
            });
  });
}

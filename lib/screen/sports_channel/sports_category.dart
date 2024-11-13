import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macedon/config/app-url.dart';
import 'package:macedon/router/navigator_router.dart';
import 'package:macedon/static/color.dart';
import 'package:macedon/view_model/service/service_category_viewmodel.dart';

import 'widget/single_sports_category_detail_screen.dart';

class GymListItem extends StatelessWidget {
  // final Gym gym;

  // const GymListItem({required this.gym});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CActegory"),
      ),
      body: FutureBuilder(
          future: ProviderScope.containerOf(context, listen: true)
              .read(serviceProvider.notifier)
              .CategoryViewmodel(),
          builder: (context, snapshot) {
            var product = ProviderScope.containerOf(context, listen: false)
                .read(serviceProvider);
            // print(product?.messages?.data?.service_data?[0].CenterDtls);

            return snapshot.connectionState == ConnectionState.waiting
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.separated(
                    padding: EdgeInsets.only(top: 15, bottom: 15),
                    itemCount: product.messages!.data!.Center_Data!.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          navigation(
                              context,
                              SinglesportsChannel(product.messages!.data!
                                  .Center_Data![index].center_id));
                        },
                        child: Container(
                            height: 150,
                            width: double.infinity,
                            margin: EdgeInsets.only(left: 14, right: 14),
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                // shape: BoxShape.circle,
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: Colo.blue, width: 0.3)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 150,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: CachedNetworkImageProvider(
                                              "${AppUrl.imageUrl}${product.messages!.data!.Center_Data![index].centerimage}"))),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${product.messages!.data!.Center_Data![index].center_name}",
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                    Text(
                                      "${product.messages!.data!.Center_Data![index].city_name}${product.messages!.data!.Center_Data![index].areaname}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: 40,
                                        padding:
                                            EdgeInsets.only(left: 4, right: 4),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border:
                                                Border.all(color: Colo.blue)),
                                        child: Row(
                                          children: [
                                            Text(
                                              "5.4",
                                              style: TextStyle(
                                                  color: Colo.blue,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 21),
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colo.blue,
                                            )
                                          ],
                                        )),
                                    Text("distance \n 12 Km")
                                  ],
                                ),
                              ],
                            )),
                      );
                    },
                    separatorBuilder: (context, int) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                  );
          }),
    );
  }
}

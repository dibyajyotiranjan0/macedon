import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macedon/config/app-url.dart';
import 'package:macedon/model/home/home_model.dart';
import 'package:macedon/view_model/home/home_viewmodel.dart';
import 'package:macedon/view_model/single_center/single_center_viewmodel.dart';

Widget ServicecenterGallerySlider(BuildContext context) {
  return Consumer(
      // future: ProviderScope.containerOf(context, listen: true)
      //     .read(homeProvider.notifier)
      //     .homeViewmodel(),
      builder: (context, snapShot, child) {
    var sliderImage = ProviderScope.containerOf(context, listen: true)
        .read(singleCenterProvider);
    return sliderImage == null ||
            sliderImage.messages?.data?.Single_Center_gallery?.length == 0
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Container(
            height: 150,
            width: MediaQuery.of(context).size.width * 1,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              // border: Border.all(color: Colors.black),
            ),
            child: CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,

                  // autoPlayAnimationDuration: Duration(milliseconds: 1),
                  enlargeCenterPage: true,
                  viewportFraction: 0.7,
                  aspectRatio: 16 / 6, //this for new slider
                  // viewportFraction: 1.0,
                  // enlargeCenterPage: false,
                  scrollPhysics: const PageScrollPhysics(),
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayAnimationDuration: Duration(milliseconds: 1),
                  pageSnapping: true),
              items: sliderImage.messages!.data!.Single_Center_gallery!
                  .map((item) => Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: CachedNetworkImageProvider(
                                        "${AppUrl.imageUrl}${item.cente_image}"))),
                          )
                      //  Image.network(
                      //       item,
                      //       fit: BoxFit.fill,
                      //       height: 100,
                      //       // width: 1000,
                      //     )
                      )
                  .toList(),
            ));
  });
}

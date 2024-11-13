import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macedon/config/app-url.dart';
import 'package:macedon/screen/sports_channel/widget/amenitycard_widget_screen.dart';
import 'package:macedon/screen/sports_channel/widget/membership_plan_cener_widget.dart';
import 'package:macedon/screen/sports_channel/widget/rate_review_dialog.dart';
import 'package:macedon/screen/sports_channel/widget/single_center_amenities.dart';
import 'package:macedon/screen/sports_channel/widget/single_center_discounter_gallery.dart';
import 'package:macedon/screen/sports_channel/widget/single_center_product_widget.dart';
import 'package:macedon/screen/sports_channel/widget/slider_widget.dart';
import 'package:macedon/static/color.dart';
import 'package:macedon/view_model/single_center/single_center_viewmodel.dart';

class SinglesportsChannel extends StatelessWidget {
  String? centerId;
  SinglesportsChannel(this.centerId);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Hi, Samir Sahoo"),
            Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 8),
                Text("Bhubaneswar"),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 8, right: 8),
        child: FutureBuilder(
            future: ProviderScope.containerOf(context, listen: true)
                .read(singleCenterProvider.notifier)
                .CategoryViewmodel(centerId: centerId),
            builder: (context, snapshot) {
              var singleCenter =
                  ProviderScope.containerOf(context, listen: false)
                      .read(singleCenterProvider);
              // print(product?.messages?.data?.service_data?[0].CenterDtls);

              return snapshot.connectionState == ConnectionState.waiting
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ServicecenterSliderWidget(context),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Address",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),

                        addressCenter(),
                        SizedBox(height: 10),
                        ServicecenterGallerySlider(context),
                        SizedBox(height: 10),
                        SingleCenterProduct(),
                        SizedBox(
                          height: 10,
                        ),
                        SingleCenterAmenities(),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Customer Review",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return RateAndReview();
                                  });
                            },
                            child: Text("Rate And Review"))
                        // Add more widgets here as needed...
                      ],
                    );
            }),
      ),
    );
  }
}

class MembershipCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const MembershipCard({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: imageUrl,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 5),
        Text(title),
      ],
    );
  }
}

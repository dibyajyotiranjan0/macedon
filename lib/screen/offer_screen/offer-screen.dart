import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macedon/config/app-url.dart';
import 'package:macedon/view_model/offer/offer_viewmodel.dart';

class OfferScreen extends ConsumerWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final offerState = ref.watch(offerProvider);
    final offerNotifier = ref.read(offerProvider.notifier);

    // Trigger the fetch of membership data
    offerNotifier.macedonOffer();
    return Scaffold(
      appBar: AppBar(
        title: Text("Offer Screen"),
      ),
      body: offerState.data == null
          ? Center(child: CircularProgressIndicator())
          : ListView.separated(
              padding: EdgeInsets.all(15),
              itemBuilder: (cntext, index) {
                return Container(
                  height: 150,
                  decoration: BoxDecoration(
                      // image: DecorationImage(
                      //     fit: BoxFit.fill,
                      //     image: AssetImage("assets/image/indian_flag.png"))
                      image: DecorationImage(
                          image: CachedNetworkImageProvider(
                              '${AppUrl.imageUrl}${offerState.data![index].img}'))),
                );
              },
              separatorBuilder: (context, int) {
                return SizedBox(
                  height: 10,
                );
              },
              itemCount: offerState.data!.length),
    );
  }
}

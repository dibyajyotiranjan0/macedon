import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:macedon/screen/coupon/coupon_screen.dart';
import 'package:macedon/screen/home/category/category_screen.dart';
import 'package:macedon/screen/home/center/category_center_screen.dart';
import 'package:macedon/screen/home/clint_review/clint_review_screen.dart';
import 'package:macedon/screen/home/coupon/coupon_screen.dart';
import 'package:macedon/screen/home/location_available/location_available.dart';
import 'package:macedon/screen/home/slider/slider_widget.dart';
import 'package:macedon/static/color.dart';
import 'package:macedon/view_model/city/allcity_viewmodel.dart';
import 'package:macedon/view_model/search/search_viewmodel.dart';

import '../../view_model/home/home_viewmodel.dart';
import 'location_selection/location.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  // initState() {
  //   ProviderContainer().read(homeProvider.notifier).homeViewmodel();
  //   ProviderContainer().read(cityProvider.notifier).allCity();
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var cityLocaton = ref.watch(cityProvider);
    return Scaffold(
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.60,
        backgroundColor: Colo.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 120,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colo.white,
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    // radius: 43,
                    child: Icon(
                      Icons.person,
                      color: Colo.blue,
                    ),
                  ),
                  title: Text(
                    'Drawer Header',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              titleTextStyle: Theme.of(context).textTheme.bodyMedium,
              leading: Icon(Icons.support_agent_outlined),
              title: Center(child: Text('Contact Us')),
              onTap: () {
                // Navigate to Home screen or close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              titleTextStyle: Theme.of(context).textTheme.bodyMedium,
              leading: Icon(Icons.info_outline_rounded),
              title: Center(child: Text('About')),
              onTap: () {
                // Navigate to Settings screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              titleTextStyle: Theme.of(context).textTheme.bodyMedium,
              leading: Icon(Icons.contact_support_outlined),
              title: Center(child: Text('Faqs')),
              onTap: () {
                // Navigate to Contact Us screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              titleTextStyle: Theme.of(context).textTheme.bodyMedium,
              leading: Icon(Icons.receipt_long_outlined),
              title: Center(child: Text('Terms And Cnditions')),
              onTap: () {
                // Navigate to Settings screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              titleTextStyle: Theme.of(context).textTheme.bodyMedium,
              leading: Icon(Icons.description_outlined),
              title: Center(child: Text('Privacy Policy')),
              onTap: () {
                // Navigate to Contact Us screen
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: NestedScrollView(
        physics: BouncingScrollPhysics(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.blue,
              leading: IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.grid_view_outlined)),
              leadingWidth: 30,

              actions: [
                IconButton(
                    onPressed: () {
                      context.push("/home/search", extra: {'id': "0"}).then(
                          (_) =>
                              ref.read(searchProvider.notifier).clearResults());
                    },
                    icon: Icon(Icons.search_rounded)),
                TextButton.icon(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const GetLocation();
                        });
                  },
                  label: Consumer(builder: (context, ref, child) {
                    return Text("${cityLocaton.city_name ?? "Bhubaneswar"}");
                    // "${cityLocaton.selectCity != null ? cityLocaton.selectCity!.city_name ?? "" : "no City"}");
                  }),
                  icon: Icon(Icons.location_on_outlined),
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 14),
                      padding: EdgeInsets.zero,
                      iconColor: Colo.white,
                      foregroundColor: Colo.white,
                      minimumSize: Size(0, 0),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                ),
                SizedBox(
                  width: 10,
                )
              ],
              title: Text('Hii, Samir sahoo'),
              floating: true,
              snap: true,
              pinned: true,
              expandedHeight: 20.0,
              // flexibleSpace: FlexibleSpaceBar(
              //   background: Image.network(
              //     "https://via.placeholder.com/350x150",
              //     fit: BoxFit.cover,
              //   ),
              // ),
              //   flexibleSpace: FlexibleSpaceBar(
              //     collapseMode: CollapseMode.pin,
              //     background: Container(
              //       color: Colors.blue,
              //       // child: Stack(
              //       //   fit: StackFit.expand,
              //       //   children: <Widget>[
              //       //     // Image.network(
              //       //     //   "https://via.placeholder.com/350x150",
              //       //     //   fit: BoxFit.cover,
              //       //     // ),
              //       //     Container(
              //       //       decoration: BoxDecoration(
              //       //         gradient: LinearGradient(
              //       //           colors: [Colors.transparent, Colors.blue],
              //       //           begin: Alignment.topCenter,
              //       //           end: Alignment.bottomCenter,
              //       //         ),
              //       //       ),
              //       //     ),
              //       //   ],
              //       // ),
              //     ),
              //   ),
            ),
          ];
        },
        body: FutureBuilder(
            future: ref.watch(homeProvider.notifier).homeViewmodel(),
            builder: (context, snapShot) {
              var product = ProviderScope.containerOf(context, listen: false)
                  .read(homeProvider.notifier)
                  .homeModel;
              // print(product?.messages?.data?.service_data?[0].CenterDtls);
              return product == null
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView(
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(8.0),
                      children: [
                        SliderWidget(context),
                        CategoryScreen(),
                        categoryCenterWidget(),
                        // Container(
                        //   // height: 100,
                        //   margin: EdgeInsets.only(left: 8, right: 8),
                        //   width: double.maxFinite,

                        //   decoration: BoxDecoration(
                        //     // border: GradientBorder(
                        //     //   borderGradient: LinearGradient(
                        //     //     colors: [
                        //     //       Colors.red,
                        //     //       Colors.green,
                        //     //     ],
                        //     //     tileMode: TileMode.repeated,
                        //     //     begin: Alignment.topLeft,
                        //     //     end: Alignment.bottomRight,
                        //     //     stops: [0.0, 1.0],
                        //     //     transform: GradientRotation(0.0),
                        //     //   ),
                        //     //   width: 2,
                        //     // ),

                        //     gradient: LinearGradient(
                        //       colors: [Colors.green, Colors.red],
                        //       begin: Alignment.topLeft,
                        //       end: Alignment.bottomRight,
                        //     ),
                        //   ),
                        //   child: Column(
                        //     children: [
                        //       Container(
                        //         height: 50,
                        //         alignment: Alignment.center,
                        //         margin: EdgeInsets.all(8),
                        //         decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(12),
                        //             color: Colors.white),
                        //         child: Text("12 month Ditecian Plan"),
                        //       ),
                        //       Container(
                        //         margin: EdgeInsets.only(left: 5, right: 5),
                        //         decoration: BoxDecoration(
                        //             border: Border.all(color: Colors.white),
                        //             borderRadius: BorderRadius.circular(12)),
                        //         // padding: const EdgeInsets.all(0),
                        //         child: ListTile(
                        //           // isThreeLine: true,
                        //           // contentPadding:
                        //           //     EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
                        //           minVerticalPadding: 0.0,
                        //           textColor: Colors.white,
                        //           // contentPadding: EdgeInsets.zero,
                        //           minLeadingWidth: 20,
                        //           // minVerticalPadding: 0,
                        //           leading: Icon(Icons.check),
                        //           title: Text("Package Duration"),
                        //           subtitle: Text("Class per Weak Rs0/-"),
                        //           trailing: Text("365 DAYS"),
                        //         ),
                        //       ),
                        //       SizedBox(
                        //         height: 45,
                        //         // width: 1000,
                        //         child: ElevatedButton.icon(
                        //           style: ElevatedButton.styleFrom(
                        //               shape: RoundedRectangleBorder(
                        //                   borderRadius:
                        //                       BorderRadius.circular(12))),
                        //           onPressed: () {},
                        //           label: Text(
                        //             "Buy 1299",
                        //             style: TextStyle(
                        //                 color: Colors.black,
                        //                 fontWeight: FontWeight.bold,
                        //                 fontSize: 16),
                        //           ),
                        //           icon: Icon(Icons.shop_outlined),
                        //         ),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // clintReview(context),
                        // locationAvailableWidget(),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        // couponWidget(),
                      ],
                    );
            }),
      ),
    );
  }
}

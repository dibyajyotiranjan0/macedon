import 'package:cached_network_image/cached_network_image.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:macedon/config/app-url.dart';
import 'package:macedon/static/color.dart';

import '../../view_model/profile/profile_viewmodel.dart';

class ProfileScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        leading: Icon(Icons.arrow_back),
        actions: [
          // Icon(Icons.edit_document),

          IconButton(
              onPressed: () async {
                print("Button Clicked instant");
                // context.push('/home');
                context.push('/profile/editprofile', extra: {'id': "4"});
              },
              icon: Icon(Icons.edit))
          // CircleAvatar(
          //   radius: 30, // Radius of the circle
          //   backgroundColor:
          //       Colors.blue.withOpacity(0.4), // Background color of the circle
          //   child: Icon(
          //     Icons.edit, // Icon inside the circle
          //     color: Colors.white, // Icon color
          //     size: 30, // Icon size
          //   ),
          // ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Section
            FutureBuilder(
                future: ref.read(profileProvider.notifier).profileData(),
                builder: (context, snapshot) {
                  var profileO = ref.read(profileProvider);
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else
                    return Row(
                      children: [
                        InkWell(
                          onTap: () => context.push('/home'),
                          //  Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => EditProfileScreen())),
                          child: Container(
                            height: 100,
                            width: 100,
                            // radius: 50,
                            // backgroundColor: Colors.grey.shade200,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade100,
                                border: Border.all(color: Colo.black),
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider(
                                      "${AppUrl.imageUrl}${profileO.messages?.status?.profile_image ?? ""}"),
                                )),
                            child: Icon(Icons.person,
                                size: 40, color: Colors.blue),
                          ),
                        ),
                        SizedBox(width: 20),
                        Text("${profileO.messages?.status?.fullname ?? ""}",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold))
                      ],
                    );
                }),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Statistics",
                      style: TextStyle(
                          color: Colo.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        context.push("/profile/step", extra: {'id': "4"});
                      },
                      child: Text("Show All",
                          style: TextStyle(
                              color: Colo.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "120 Km, Last 7 Days",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  height: 150,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.pink.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: BarChartDataDibya(), // Placeholder for the bar chart
                ),
              ],
            ),
            // Statistics Section
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Today",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("Distance",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    Text("15 Km",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    Text("Time",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    Text("20:10 min",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    Text("Calorie",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    Text("100000",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            // Buttons Section
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 4 / 1,
              ),
              itemCount: 4,
              itemBuilder: (context, intdex) {
                return ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.blue),
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Text("Subscriptions",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                );
              },
              // children: [
              //   ElevatedButton(
              //     onPressed: () {},
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: Colors.white,
              //       side: BorderSide(color: Colors.blue),
              //       padding: EdgeInsets.symmetric(vertical: 16),
              //     ),
              //     child: Text("Subscriptions",
              //         style: TextStyle(color: Colors.black, fontSize: 14)),
              //   ),
              //   ElevatedButton(
              //     onPressed: () {},
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: Colors.white,
              //       side: BorderSide(color: Colors.blue),
              //       padding: EdgeInsets.symmetric(vertical: 16),
              //     ),
              //     child: Text("Completed Session",
              //         style: TextStyle(color: Colors.black)),
              //   ),
              //   ElevatedButton(
              //     onPressed: () {},
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: Colors.white,
              //       side: BorderSide(color: Colors.blue),
              //       padding: EdgeInsets.symmetric(vertical: 16),
              //     ),
              //     child:
              //         Text("My Wallet", style: TextStyle(color: Colors.black)),
              //   ),
              //   ElevatedButton(
              //     onPressed: () {},
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: Colors.white,
              //       side: BorderSide(color: Colors.blue),
              //       padding: EdgeInsets.symmetric(vertical: 16),
              //     ),
              //     child: Text("Logout", style: TextStyle(color: Colors.black)),
              //   ),
              // ],
            ),
          ],
        ),
      ),
    );
  }
}

// Dummy BarChart Widget, replace with an actual chart widget
class BarChartDataDibya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: BarChart(
        BarChartData(
          barGroups: [
            BarChartGroupData(
                x: 0, barRods: [BarChartRodData(toY: 8, color: Colors.blue)]),
            BarChartGroupData(
                x: 1, barRods: [BarChartRodData(toY: 12, color: Colors.blue)]),
            BarChartGroupData(
                x: 2, barRods: [BarChartRodData(toY: 14, color: Colors.blue)]),
            BarChartGroupData(
                x: 3, barRods: [BarChartRodData(toY: 15, color: Colors.blue)]),
            BarChartGroupData(
                x: 4, barRods: [BarChartRodData(toY: 13, color: Colors.blue)]),
            BarChartGroupData(
                x: 5, barRods: [BarChartRodData(toY: 10, color: Colors.blue)]),
            BarChartGroupData(
                x: 6, barRods: [BarChartRodData(toY: 6, color: Colors.blue)]),
          ],
          titlesData: FlTitlesData(
            topTitles: AxisTitles(
                sideTitles: SideTitles(
              showTitles: false,
              // getTitlesWidget: (double value, TitleMeta meta) {
              //   return SizedBox();
              // }
            )),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (double value, TitleMeta meta) {
                  const style = TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  );
                  switch (value.toInt()) {
                    case 0:
                      return Text('Mon', style: style);
                    case 1:
                      return Text('Tue', style: style);
                    case 2:
                      return Text('Wed', style: style);
                    case 3:
                      return Text('Thu', style: style);
                    case 4:
                      return Text('Fri', style: style);
                    case 5:
                      return Text('Sat', style: style);
                    case 6:
                      return Text('Sun', style: style);
                    default:
                      return Text('', style: style);
                  }
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
                getTitlesWidget: (double value, TitleMeta meta) {
                  return Text(value.toInt().toString());
                },
              ),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
                getTitlesWidget: (double value, TitleMeta meta) {
                  return Text(value.toInt().toString());
                },
              ),
            ),
          ),
          gridData: FlGridData(show: false),
          borderData: FlBorderData(
            show: false,
            border: Border(
              left: BorderSide.none, // Show y-axis line
              bottom: BorderSide.none, // Hide x-axis line
            ),
          ),
          maxY: 20,
          minY: 0,
        ),
      ),
    );
  }
}

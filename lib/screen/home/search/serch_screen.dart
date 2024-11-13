import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macedon/static/color.dart';

import '../../../config/app-url.dart';
import '../../../model/allCity/allcity_mdel.dart';
import '../../../model/allService/allservice_model.dart';
import '../../../view_model/city/allcity_viewmodel.dart';
import '../../../view_model/search/search_viewmodel.dart';

class SearchPage extends ConsumerWidget {
  SearchPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var prductRef = ref.read(searchProvider);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Search Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FutureBuilder(
            future: ref.watch(searchProvider.notifier).allCity(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              var searchProviderSearch = ref.watch(searchProvider.notifier);
              return Column(
                children: [
                  // Dropdown for City
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: FutureBuilder(
                            future:
                                ref.watch(searchProvider.notifier).allCity(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Center(
                                    child: CircularProgressIndicator());
                              } else
                                return DropdownButtonFormField<Datum>(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                Colo.black), // Set border color
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colo
                                                .black), // Set focused border color
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colo
                                                .black), // Set enabled border color
                                      ),
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      // labelText: 'Select Your Services',
                                      hintText: 'Select Your City'),
                                  value: searchProviderSearch.searchSelectcity,
                                  items: searchProviderSearch
                                      .allCityModel!.data!
                                      .map((city) {
                                    return DropdownMenuItem(
                                      value: city,
                                      child: Text(city.city_name ?? ""),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    searchProviderSearch
                                        .updateSearchCity(value);
                                    // setState(() {
                                    //   selectedCity = value;
                                    // });
                                  },
                                );
                            }),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Consumer(builder: (context, widgref, child) {
                          var catchCity = ref.watch(searchProvider);
                          // print(catchCity.city_name);
                          return ref
                                      .watch(searchProvider.notifier)
                                      .searchSelectcity ==
                                  null
                              ? DropdownButtonFormField<String>(
                                  dropdownColor: Colo.white,
                                  itemHeight: 100,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                Colo.black), // Set border color
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colo
                                                .black), // Set focused border color
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colo
                                                .black), // Set enabled border color
                                      ),
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      // labelText: 'Select Your Services',
                                      hintText: 'Select Your Area'),
                                  // value: valu,
                                  items:
                                      ["First Choose \n Your City"].map((area) {
                                    return DropdownMenuItem(
                                      value: area,
                                      child: Center(child: Text(area)),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    // print(value);
                                    // searchProviderSearch.updateSearchArea(value);
                                    // setState(() {
                                    //   selectedArea = value;
                                    // });
                                  },
                                )
                              : DropdownButtonFormField<Area>(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                Colo.black), // Set border color
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colo
                                                .black), // Set focused border color
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colo
                                                .black), // Set enabled border color
                                      ),
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      // labelText: 'Select Your Services',
                                      hintText: 'Select Your Area'),
                                  value: searchProviderSearch.searchSelectArea,
                                  items: searchProviderSearch
                                      .searchSelectcity!.areas!
                                      .map((area) {
                                    return DropdownMenuItem(
                                      value: area,
                                      child: Text(area.areaname ?? ""),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    // print(value);
                                    searchProviderSearch
                                        .updateSearchArea(value);
                                    // setState(() {
                                    //   selectedArea = value;
                                    // });
                                  },
                                );
                        }),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  // Dropdown for Area
                  SizedBox(height: 16),

                  // Dropdown for Services
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: FutureBuilder(
                            future:
                                ref.watch(searchProvider.notifier).allService(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                              var searchProviderSearch =
                                  ref.watch(searchProvider.notifier);
                              return DropdownButtonFormField<ServieDatum>(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Colo.black), // Set border color
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colo
                                              .black), // Set focused border color
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colo
                                              .black), // Set enabled border color
                                    ),
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    // labelText: 'Select Your Services',
                                    hintText: 'Select Your Services'),
                                value: searchProviderSearch.searchService,
                                items: searchProviderSearch.serviceModel!.data!
                                    .map((service) {
                                  return DropdownMenuItem(
                                    value: service,
                                    child:
                                        Text(service.service_master_name ?? ""),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  // print(value);
                                  searchProviderSearch
                                      .updateSearchService(value);
                                  // setState(() {
                                  //   selectedService = value;
                                  // });
                                },
                              );
                            }),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          searchProviderSearch.search();
                          // Add your search logic here
                        },
                        child: Text('Search'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // Search Button
                  Expanded(
                    child: prductRef.searchM == null ||
                            prductRef.searchM!.data!.center_data == null
                        ? SizedBox()
                        : ListView.separated(
                            // padding: EdgeInsets.only(top: 15, bottom: 15),
                            itemCount:
                                prductRef.searchM!.data!.center_data!.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  // navigation(
                                  //     context,
                                  //     SinglesportsChannel(product.messages!.data!
                                  //         .Center_Data![index].center_id));
                                },
                                child: Container(
                                    height: 150,
                                    width: double.infinity,
                                    // margin:
                                    //     EdgeInsets.only(left: 14, right: 14),
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        // shape: BoxShape.circle,
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color: Colo.blue, width: 0.3)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 150,
                                          width: 120,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: CachedNetworkImageProvider(
                                                      "${AppUrl.imageUrl}${prductRef.searchM!.data!.center_data![index].profile_image ?? ""}"))),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${prductRef.searchM!.data!.center_data![index].center_name ?? ""}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge,
                                            ),
                                            Text(
                                              "${prductRef.searchM!.data!.center_data![index].city_name}${prductRef.searchM!.data!.center_data![index].areaname ?? ""}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                            )
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: 30,
                                                padding: EdgeInsets.only(
                                                    left: 4, right: 4),
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                        color: Colo.blue)),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "5.4",
                                                      style: TextStyle(
                                                          color: Colo.blue,
                                                          fontWeight:
                                                              FontWeight.bold,
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
                          ),
                  )
                ],
              );
            }),
      ),
    );
  }
}

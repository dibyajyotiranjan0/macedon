import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macedon/model/allCity/allcity_mdel.dart';
import 'package:macedon/static/flutter_toast_message/toast_messge.dart';

import '../../../static/color.dart';
import '../../../view_model/city/allcity_viewmodel.dart';

class RateAndReview extends ConsumerWidget {
  const RateAndReview({
    Key? key,
  }) : super(key: key);

//   @override
//   State<GetLocation> createState() => _GetLocationState();
// }

// class _GetLocationState extends State<GetLocation> {
  // String? getLocation;

  // Future<String?> getCity() async{
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   String? location = preferences.getString(ApiStrings.cityName);
  //   getLocation = location;

  //  if(getLocation == null){
  //    preferences.setString(ApiStrings.cityID, '23');
  //     getLocation = "Bhubaneswar";
  //   }else{
  //     getLocation = location;
  //   }
  //   debugPrint("Get Location: $getLocation");
  //   return getLocation;
  // }

  // @override
  // void initState() {
  //   Future.delayed(Duration.zero, () {
  //     locController.getLoc();
  //   });
  //   getCity();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var reverpod = ref.watch(cityProvider);
    var notifierclass = ref.watch(cityProvider.notifier);
    // ref.listen(cityProvider, (previous, next) {
    //   print(previous);
    //   if (previous == null) {
    //     ref.watch(cityProvider.notifier).allCity();
    //   }
    // });

    return AlertDialog(
      backgroundColor: Colors.white,
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      title: Text(
        'Rate And Review',
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: BoxDecoration(border: Border.all(color: Colo.blue)),
            child: Text("OverAll Experience"),
          ),
          Container(
            height: 47,
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<Datum>(
                // hint: Text("${notifierclass.selectCity}"),
                value: notifierclass.selectCity,
                isExpanded: true,
                dropdownColor: Colors.white,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: notifierclass.allCityModel?.data?.map((items) {
                  return DropdownMenuItem<Datum>(
                    onTap: () async {
                      // SharedPreferences preferences = await SharedPreferences.getInstance();
                      // preferences.setString(ApiStrings.cityID, items.cityId.toString());
                      // preferences.setString(ApiStrings.cityName, items.cityName.toString());
                    },
                    value: items,
                    child: Text(
                      items.city_name ?? "",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  );
                }).toList(),
                onChanged: (Datum? newValue) async {
                  // setState(() {
                  notifierclass.updateCity(newValue);
                  // ShowToast(msg: newValue);
                  // });
                  // print(newValue);
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(color: Colo.blue),
                borderRadius: BorderRadius.circular(15)),
            child: TextField(
              maxLines: 5,
              decoration: InputDecoration(
                  hintText: "Write Your Opinions", border: InputBorder.none),
            ),
          )
        ],
      ),
      actions: [
        SizedBox(
            height: 40,
            width: double.infinity,
            child: ElevatedButton(onPressed: () {}, child: Text("Submit")))
      ],
    );
  }
}

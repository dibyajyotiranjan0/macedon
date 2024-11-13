import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mealkingresturant/model/getLoationModel.dart';
import 'package:mealkingresturant/provider/profileProvider.dart';
import 'package:provider/provider.dart';

class ResturantPageScreeen extends StatefulWidget {
  const ResturantPageScreeen({super.key});

  @override
  State<ResturantPageScreeen> createState() => _ResturantPageScreeenState();
}

class _ResturantPageScreeenState extends State<ResturantPageScreeen> {
  GlobalKey<FormState> formKey = new GlobalKey();
  List<String> _locations = [
    "Veg",
    "NonVeg",
    "Both",
  ];
  //String _onDropDownItemSelected = '(Choose Option ▼)';
  TextEditingController image = TextEditingController();
  var _selectedLocation = "Veg";
  int index = 0;
  Uint8List? _image;
  TextEditingController ResturantfulName = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController prcontact = TextEditingController();
  TextEditingController scContact = TextEditingController();
  String? cityName;
  String? areaName;
  String? pincode;
  AllCity? cityValue;
  Areas? areaValue;
  var pincodeValue;

  @override
  void initState() {
    // TODO: implement initState
    final provider =
        Provider.of<ViewProfileResturantProvider>(context, listen: false);
    provider.viewProfileAndResturant();
    // provider.getCityName();
    provider.getAllLocation();
    if (provider.profile_resturant != null) {
      ResturantfulName = TextEditingController(
          text: provider
              .profile_resturant!.messages!.status!.userdata![0].centerName);
      address = TextEditingController(
          text: provider
              .profile_resturant!.messages!.status!.userdata![0].address1);
      prcontact = TextEditingController(
          text: provider
              .profile_resturant!.messages!.status!.userdata![0].contactNo);
      scContact = TextEditingController(
          text: provider
              .profile_resturant!.messages!.status!.userdata![0].alterCnum);
    }

    super.initState();
  }

  Validate(input) {
    if (input.isEmpty) {
      return 'Please type something';
    }
    return null;
  }

  submitForm(formkey) {
    final formState = formKey.currentState;
    if (formState!.validate()) {
      //formState.save();
      var provider =
          Provider.of<ViewProfileResturantProvider>(context, listen: false);
      // provider.updateResturantProvider(restaurant_name:ResturantfulName.text.toString(),
      // restaurant_type:,
      // city_id,
      // area_id,
      // pin,
      // address1); // it update after sir geeting the api
      // then do something
    } else {
      print("Sorry");
    }
  }

  File? selectedIMage;

  Future pickImage() async {
    // final iimage = ImagePicker().pickImage(source: ImageSource.camera);
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      // selectedIMage = File(returnImage.path.toString());

      selectedIMage = File(returnImage.name.toString());
      // _image = File(returnImage.path).readAsBytesSync();
    });
    // print(returnImage.);
  }

  Future _pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.name);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop(); //close the model sheet
  }

  Future _pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.name);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.blue[100],
        context: context,
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.5,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromGallery();
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.image,
                              size: 70,
                            ),
                            Text("Gallery")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromCamera();
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.camera_alt,
                              size: 70,
                            ),
                            Text("Camera")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ViewProfileResturantProvider>(context);
    // print(provider.resturantCitySelect!);
    image = TextEditingController(text: "$selectedIMage");
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Resturant details",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              TextFormField(
                autocorrect: true,
                maxLines: 1,
                controller: ResturantfulName,
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  label: Text(
                    "Resturant Name",
                  ),

                  alignLabelWithHint: true,
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  // floatingLabelBehavior: FloatingLabelBehavior.always,
                  // label: Text("Contact No"),
                  // floatingLabelBehavior: FloatingLabelBehavior.always,
                  // floatingLabelStyle: TextStyle(),
                  hintText: "Dibyajyoti Ranjan",
                  hintStyle: TextStyle(color: Colors.black26, fontSize: 14),
                  contentPadding: EdgeInsets.only(left: 5, bottom: 5),
                  // focusedBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.black)),
                  // OutlineInputBorder(
                  //     borderSide:
                  //         const BorderSide(color: Colors.black, width: 1.0),
                  //     borderRadius: BorderRadius.circular(10)),
                  border: UnderlineInputBorder(),
                  // OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(10),
                  //     borderSide:BorderSide.
                  //         )
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Resturant Type",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )),
                    Container(
                      height: 50,
                      // width: 200,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20, right: 20),

                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      child: DropdownButton(
                        elevation: 16,
                        padding: EdgeInsets.only(right: 1, left: 0),
                        underline: const SizedBox(),
                        isDense: true,

                        hint: Text("${_selectedLocation}"),
                        isExpanded: true,
                        //iconSize: 30.0,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                        items: _locations.map(
                          (val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Center(
                                  child: Text(
                                val,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              )),
                            );
                          },
                        ).toList(),
                        onChanged: (val) {
                          setState(
                            () {
                              index = 0;
                              _selectedLocation = val!;
                            },
                          );
                        },
                      ),
                    )
                  ]),

              SizedBox(
                height: 10,
              ),
              TextFormField(
                autocorrect: true,
                maxLines: 1,
                controller: prcontact,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  label: Text("Primer Contact No."),
                  alignLabelWithHint: true,
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  // label: Text("Contact No"),
                  // floatingLabelBehavior: FloatingLabelBehavior.always,
                  // floatingLabelStyle: TextStyle(),
                  hintText: "8657345263",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 16),
                  contentPadding: EdgeInsets.only(left: 5, bottom: 5),
                  //focusedBorder: InputBorder.none,
                  // OutlineInputBorder(
                  //     borderSide: const BorderSide(
                  //         color: Colors.black, width: 2.0),
                  // borderRadius: BorderRadius.circular(10)),
                  border: UnderlineInputBorder(),
                  // OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(10),
                  //     borderSide:
                  //         BorderSide(color: Colors.black, width: 2))
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                autocorrect: true,
                maxLines: 1,
                controller: scContact,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  label: Text("Alternet Conact Noo."),
                  alignLabelWithHint: true,
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  // label: Text("Contact No"),
                  // floatingLabelBehavior: FloatingLabelBehavior.always,
                  // floatingLabelStyle: TextStyle(),
                  hintText: "9863096678",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 16),
                  contentPadding: EdgeInsets.only(left: 5, bottom: 5),
                  //focusedBorder: InputBorder.none,
                  // OutlineInputBorder(
                  //     borderSide: const BorderSide(
                  //         color: Colors.black, width: 2.0),
                  // borderRadius: BorderRadius.circular(10)),
                  border: UnderlineInputBorder(),
                  // OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(10),
                  //     borderSide:
                  //         BorderSide(color: Colors.black, width: 2))
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Primary Image",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )),
                    InkWell(
                        onTap: () => showImagePickerOption(context),
                        child: Container(
                          height: 50,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              _image != null
                                  ? SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Image.memory(_image!))
                                  : Text("select an image"),
                              Expanded(
                                  child: selectedIMage != null
                                      ? FittedBox(
                                          fit: BoxFit.none,
                                          child: Text(
                                            "${selectedIMage}",
                                            overflow: TextOverflow.fade,
                                          ))
                                      : SizedBox()),
                              Icon(Icons.image_outlined),
                              // Align(
                              //   alignment: Alignment.centerLeft,
                              //   child: Expanded(
                              //       child: FittedBox(
                              //           fit: BoxFit.none,
                              //           child: Text(
                              //             selectedIMage == null
                              //                 ? "Please choose profile image"
                              //                 : "${selectedIMage}",
                              //             overflow: TextOverflow.fade,
                              //           ))),
                              // ),
                              // Icon(Icons.image_outlined)
                            ],
                          ),
                        )),
                  ]),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 20,
              ),
              // TextFormField(
              //   autocorrect: true,
              //   maxLines: 1,
              //   controller: address,
              //   keyboardType: TextInputType.number,
              //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              //   decoration: InputDecoration(
              //     label: Text("City"),
              //     alignLabelWithHint: true,
              //     floatingLabelAlignment: FloatingLabelAlignment.start,
              //     floatingLabelBehavior: FloatingLabelBehavior.always,
              //     // label: Text("Contact No"),
              //     // floatingLabelBehavior: FloatingLabelBehavior.always,
              //     // floatingLabelStyle: TextStyle(),
              //     hintText: "Bhubaneswar",
              //     hintStyle: TextStyle(color: Colors.black, fontSize: 16),
              //     contentPadding: EdgeInsets.only(left: 5, bottom: 5),
              //     //focusedBorder: InputBorder.none,
              //     // OutlineInputBorder(
              //     //     borderSide: const BorderSide(
              //     //         color: Colors.black, width: 2.0),
              //     // borderRadius: BorderRadius.circular(10)),
              //     border: UnderlineInputBorder(),
              //     // OutlineInputBorder(
              //     //     borderRadius: BorderRadius.circular(10),
              //     //     borderSide:
              //     //         BorderSide(color: Colors.black, width: 2))
              //   ),
              // ),

              // SizedBox(
              //   height: 10,
              // ),
              // TextFormField(
              //   autocorrect: true,
              //   maxLines: 1,
              //   //controller: number,
              //   keyboardType: TextInputType.number,
              //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              //   decoration: InputDecoration(
              //     label: Text("Area"),
              //     alignLabelWithHint: true,
              //     floatingLabelAlignment: FloatingLabelAlignment.start,
              //     floatingLabelBehavior: FloatingLabelBehavior.always,
              //     // label: Text("Contact No"),
              //     // floatingLabelBehavior: FloatingLabelBehavior.always,
              //     // floatingLabelStyle: TextStyle(),
              //     hintText: "Saheed Nagar,Bhubaneswar, Odisha",
              //     hintStyle: TextStyle(color: Colors.black, fontSize: 16),
              //     contentPadding: EdgeInsets.only(left: 5, bottom: 5),
              //     //focusedBorder: InputBorder.none,
              //     // OutlineInputBorder(
              //     //     borderSide: const BorderSide(
              //     //         color: Colors.black, width: 2.0),
              //     // borderRadius: BorderRadius.circular(10)),
              //     border: UnderlineInputBorder(),
              //     // OutlineInputBorder(
              //     //     borderRadius: BorderRadius.circular(10),
              //     //     borderSide:
              //     //         BorderSide(color: Colors.black, width: 2))
              //   ),
              // ),

              Consumer<ViewProfileResturantProvider>(
                  builder: (context, valu, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Choose Resturant Address",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )),
                    Container(
                      height: 50,
                      // width: 200,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20, right: 20),

                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      child: valu.getLocationModel != null
                          ? DropdownButton(
                              elevation: 16,
                              padding: EdgeInsets.only(
                                right: 1,
                                left: 0,
                              ),
                              underline: const SizedBox(),
                              isDense: true,

                              hint: cityName != null
                                  ? Text("${cityName}")
                                  : Text("choose City"),
                              isExpanded: true,
                              //iconSize: 30.0,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              items: valu
                                  .getLocationModel!.messages!.status!.allCity!
                                  .map(
                                (val) {
                                  return DropdownMenuItem(
                                    alignment: Alignment.centerLeft,
                                    value: val,
                                    child: Text("${val.cityName}"),
                                  );
                                },
                              ).toList(),
                              onChanged: (val) {
                                setState(
                                  () {
                                    cityValue = AllCity.fromJson(val!.toJson());
                                    cityName = val!.cityName;
                                  },
                                );
                              },
                            )
                          : SizedBox(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    cityValue != null && cityValue!.areas!.length != 0
                        ? Container(
                            height: 50,
                            // width: 200,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: 20, right: 20),

                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10)),
                            child: DropdownButton(
                              elevation: 16,
                              padding: EdgeInsets.only(
                                right: 1,
                                left: 0,
                              ),
                              underline: const SizedBox(),
                              isDense: true,

                              hint: areaName != null
                                  ? Text("${areaName}")
                                  : Text("Choosee Area"),
                              isExpanded: true,
                              //iconSize: 30.0,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              items: cityValue!.areas!.map(
                                (val) {
                                  return DropdownMenuItem(
                                    alignment: Alignment.centerLeft,
                                    value: val,
                                    child: Text("${val.areaname}"),
                                  );
                                },
                              ).toList(),
                              onChanged: (val) {
                                setState(
                                  () {
                                    areaValue = Areas.fromJson(val!.toJson());
                                    areaName = val!.areaname;
                                    // index = 0;
                                    // areaName = val!;
                                  },
                                );
                              },
                            ),
                          )
                        : SizedBox(),
                    SizedBox(
                      height: 20,
                    ),
                    areaValue != null && areaValue!.pinCodes!.length != 0
                        ? Container(
                            height: 50,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10)),
                            child: DropdownButton(
                              elevation: 16,
                              padding: EdgeInsets.only(
                                right: 1,
                                left: 0,
                              ),
                              underline: const SizedBox(),
                              isDense: true,

                              hint: pincode != null
                                  ? Text("${pincode!}")
                                  : Text("choose PinCode"),
                              isExpanded: true,
                              //iconSize: 30.0,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              items: areaValue!.pinCodes!.map(
                                (val) {
                                  return DropdownMenuItem(
                                    alignment: Alignment.centerLeft,
                                    value: val,
                                    child: Text("${val.pincode}"),
                                  );
                                },
                              ).toList(),
                              onChanged: (val) {
                                setState(
                                  () {
                                    pincode = val!.pincode;
                                    // index = 0;
                                    // _selectedLocation = val!;
                                  },
                                );
                              },
                            ),
                          )
                        : SizedBox(),
                  ],
                );
              }),
              SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
              ),
              SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 1,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          alignment: Alignment.center,
                          backgroundColor:
                              MaterialStateProperty.all(Colors.redAccent),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)))),
                      onPressed: () => submitForm(formKey),
                      child: Text("Submit",
                          style:
                              TextStyle(color: Colors.white, fontSize: 18)))),
              // SizedBox(
              //   height: 100,
              //   width: 100,
              //   child: _image != null ? Image.memory(_image!) : SizedBox(),
              //)
            ],
          ),
        ),
      ),
    );
  }
}

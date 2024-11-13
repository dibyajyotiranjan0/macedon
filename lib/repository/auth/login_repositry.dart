import 'package:dio/dio.dart';

import '../../config/app-url.dart';
import '../../data/network/api_helper.dart';

class AuthApiRepository {
  Future<dynamic> loginRepository({required contact}) async {
    late var response;

    try {
      FormData formData = FormData.fromMap({'contact': contact});
      response = await NetworkApiService()
          .postApi(url: AppUrl.loginOtp, formData: formData);

      // response = await loginOtpModel.fromJson(data);
    } catch (e) {
      throw Exception(e);
    }
    return response;
  }

  Future verifyOtp({required phoneNo}) async {
    late var response;

    try {
      FormData formData = FormData.fromMap({
        'contact': phoneNo,
      });
      response = await NetworkApiService()
          .postApi(url: AppUrl.getUserData, formData: formData);

      // response = await VerifyOtpHomeModel.fromJson(data);
    } catch (e) {
      throw Exception(e);
    }

    return response;
  }

  // Future resisterDriver(
  //     {required name,
  //     required email,
  //     required contact,
  //     required altcontact,
  //     required state,
  //     required city,
  //     required String pincode,
  //     required address1,
  //     required String address2,
  //     required license_no,
  //     required password,
  //     required ac_name,
  //     required bank_name,
  //     required acc_no,
  //     required ifsc,
  //     required exp_year,
  //     required img,
  //     required frontimg,
  //     required backimg,
  //     required license_img,
  //     required adharno,
  //     required branch_name,
  //     required block,
  //     required ditrict,
  //     required father_name,
  //     required blood_group,
  //     required cheque,
  //     required String spouse_name,
  //     required license_expire_date,
  //     required dob,
  //     required mother_name,
  //     required nominee_name,
  //     required nominee_rltn,
  //     required nominee_add,
  //     required nominee_dob,
  //     required license_type}) async {
  //   late var response;

  //   try {
  //     FormData formData = FormData.fromMap({
  //       'full_name': name,
  //       'email': email,
  //       'contact_no': contact,
  //       'altcontact': altcontact,
  //       'state': state,
  //       'city': city,
  //       'pincode': pincode,
  //       'address1': address1,
  //       'address2': address2,
  //       'license_no': license_no,
  //       'password': password,
  //       'ac_name': ac_name,
  //       'bank_name': bank_name,
  //       'acc_no': acc_no,
  //       'ifsc': ifsc,
  //       'exp_year': exp_year,
  //       'img': img,
  //       'frontimg': frontimg,
  //       'backimg': backimg,
  //       'license_img': license_img,
  //       'adharno': adharno,
  //       'branch_name': branch_name,
  //       'block': block,
  //       'ditrict': ditrict,
  //       'father_name': father_name,
  //       'blood_group': blood_group,
  //       'cheque': cheque,
  //       'spouse_name': spouse_name,
  //       'license_expire_date': license_expire_date,
  //       'dob': dob,
  //       'mother_name': mother_name,
  //       'nominee_name': nominee_name,
  //       'nominee_rltn': nominee_rltn,
  //       'nominee_add': nominee_add,
  //       'nominee_dob': nominee_dob,
  //       'license_type': license_type,
  //     });
  //     response = await NetworkApiService()
  //         .postApi(url: AppUrl.resisterDriver, formData: formData);
  //   } catch (e) {
  //     throw Exception(e);
  //   }

  //   return response;
  // }

  // Future resisterOwner({
  //   required name,
  //   required email,
  //   required contact,
  //   required altcontact,
  //   required state,
  //   required city,
  //   required String pincode,
  //   required address1,
  //   required String address2,
  //   required license_no,
  //   required password,
  //   required ac_name,
  //   required bank_name,
  //   required acc_no,
  //   required ifsc,
  //   required exp_year,
  //   required img,
  //   required frontimg,
  //   required backimg,
  //   required license_img,
  //   required adharno,
  //   required branch_name,
  //   required block,
  //   required ditrict,
  //   required father_name,
  //   required blood_group,
  //   required cheque,
  //   required String spouse_name,
  //   required license_expire_date,
  //   required dob,
  //   required mother_name,
  //   required nominee_name,
  //   required nominee_rltn,
  //   required nominee_add,
  //   required nominee_dob,
  //   required license_type,
  //   required is_driver,
  // }) async {
  //   late var response;

  //   try {
  //     FormData formData = FormData.fromMap({
  //       'full_name': name,
  //       'email': email,
  //       'contact_no': contact,
  //       'altcontact': altcontact,
  //       'state': state,
  //       'city': city,
  //       'pincode': pincode,
  //       'address1': address1,
  //       'address2': address2,
  //       'license_no': license_no,
  //       'password': password,
  //       'ac_name': ac_name,
  //       'bank_name': bank_name,
  //       'acc_no': acc_no,
  //       'ifsc': ifsc,
  //       'exp_year': exp_year,
  //       'img': img,
  //       'frontimg': frontimg,
  //       'backimg': backimg,
  //       'license_img': license_img,
  //       'adharno': adharno,
  //       'branch_name': branch_name,
  //       'block': block,
  //       'ditrict': ditrict,
  //       'father_name': father_name,
  //       'blood_group': blood_group,
  //       'cheque': cheque,
  //       'spouse_name': spouse_name,
  //       'license_expire_date': license_expire_date,
  //       'dob': dob,
  //       'mother_name': mother_name,
  //       'nominee_name': nominee_name,
  //       'nominee_rltn': nominee_rltn,
  //       'nominee_add': nominee_add,
  //       'nominee_dob': nominee_dob,
  //       'license_type': license_type,
  //       'is_driver': is_driver,
  //       'member_id': null,
  //     });
  //     response = await NetworkApiService()
  //         .postApi(url: AppUrl.resisterOwner, formData: formData);
  //   } catch (e) {
  //     throw Exception(e);
  //   }

  //   return response;
  // }

  // Future getMasterrepo() async {
  //   late var response;
  //   try {
  //     response = await NetworkApiService().getApi(urll: AppUrl.getMaster);
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  //   return response;
  // }
}

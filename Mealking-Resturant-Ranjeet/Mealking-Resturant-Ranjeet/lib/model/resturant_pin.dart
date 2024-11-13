class ResturantPinSelect {
  int? status;
  bool? error;
  Messages? messages;

  ResturantPinSelect({this.status, this.error, this.messages});

  ResturantPinSelect.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    error = json['error'];
    messages = json['messages'] != null
        ? new Messages.fromJson(json['messages'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['error'] = this.error;
    if (this.messages != null) {
      data['messages'] = this.messages!.toJson();
    }
    return data;
  }
}

class Messages {
  String? responsecode;
  Status? status;

  Messages({this.responsecode, this.status});

  Messages.fromJson(Map<String, dynamic> json) {
    responsecode = json['responsecode'];
    status =
        json['status'] != null ? new Status.fromJson(json['status']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['responsecode'] = this.responsecode;
    if (this.status != null) {
      data['status'] = this.status!.toJson();
    }
    return data;
  }
}

class Status {
  List<Allpin>? allpin;

  Status({this.allpin});

  Status.fromJson(Map<String, dynamic> json) {
    if (json['Allpin'] != null) {
      allpin = <Allpin>[];
      json['Allpin'].forEach((v) {
        allpin!.add(new Allpin.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.allpin != null) {
      data['Allpin'] = this.allpin!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Allpin {
  String? pinId;
  String? areaId;
  String? cityId;
  String? pincode;
  String? status;
  String? createdDate;
  String? updatedDate;

  Allpin(
      {this.pinId,
      this.areaId,
      this.cityId,
      this.pincode,
      this.status,
      this.createdDate,
      this.updatedDate});

  Allpin.fromJson(Map<String, dynamic> json) {
    pinId = json['pin_id'];
    areaId = json['area_id'];
    cityId = json['city_id'];
    pincode = json['pincode'];
    status = json['status'];
    createdDate = json['created_date'];
    updatedDate = json['updated_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pin_id'] = this.pinId;
    data['area_id'] = this.areaId;
    data['city_id'] = this.cityId;
    data['pincode'] = this.pincode;
    data['status'] = this.status;
    data['created_date'] = this.createdDate;
    data['updated_date'] = this.updatedDate;
    return data;
  }
}
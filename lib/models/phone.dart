class Phone extends Object {
  String? phoneNumber;
  String? countryCode;

  Phone({this.phoneNumber, this.countryCode});

  Phone.fromJson(Map<String, dynamic> json) {
    phoneNumber = json['phone_number'];
    countryCode = json['country_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['phone_number'] = phoneNumber;
    data['country_code'] = countryCode;
    return data;
  }

}
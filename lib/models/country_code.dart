class CountryCode extends Object {
  String? countryCode;
  String? countryName;
  String? countryFlag;
  String? dialCode;


  CountryCode({this.countryCode, this.countryName, this.countryFlag, this.dialCode});

  CountryCode.fromJson(Map<String, dynamic> json) {
    countryCode = json['country_code'];
    countryName = json['country_name'];
    countryFlag = json['country_flag'];
    dialCode = json['dial_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['country_code'] = countryCode;
    data['country_name'] = countryName;
    data['country_flag'] = countryFlag;
    data['dial_code'] = dialCode;
    return data;
  }
}

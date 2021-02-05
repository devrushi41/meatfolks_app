class Address {
  String id;
  double latitude;
  double longitude;
  String flatNo;
  String streetName;
  String apartName;
  String city;
  String state;
  String pinCode;

  Address(
      {this.latitude,
      this.id,
      this.longitude,
      this.flatNo,
      this.streetName,
      this.apartName,
      this.city,
      this.state,
      this.pinCode});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
        apartName: json['apartName'],
        id: json['id'],
        latitude: json['latitude'],
        longitude: json['longitude'],
        streetName: json['streetName'],
        flatNo: json['flatNo'],
        city: json['city'],
        state: json['state'],
        pinCode: json['pincode']);
  }
}

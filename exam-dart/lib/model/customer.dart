class Customer {
  int? id;
  String? fullName;
  String? address;
  DateTime? birthday;
  String? phoneNumber;
  Customer({this.id, this.fullName, this.address, this.birthday, this.phoneNumber});

  factory Customer.valueFromJson(Map<String, dynamic> json) {
    return Customer(
        id: json["id"] as int,
        fullName: json["fullName"] as String,
        address: json["address"] as String,
        phoneNumber: json["phoneNumber"] as String,
        birthday: json["DateTime"] as DateTime
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return "id: $id, fullName: $fullName, address: $address, birthday: $birthday, phoneNumber: $phoneNumber";
  }
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "fullName": fullName,
      "birthday": birthday?.toIso8601String(),
      "address": address,
      "phoneNumber": phoneNumber,
    };
  }

}
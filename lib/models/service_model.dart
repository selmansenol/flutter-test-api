// To parse this JSON data, do
//
//     final serviceModel = serviceModelFromJson(jsonString);

import 'dart:convert';

ServiceModel serviceModelFromJson(String str) =>
    ServiceModel.fromJson(json.decode(str));

String serviceModelToJson(ServiceModel data) => json.encode(data.toJson());

class ServiceModel {
  int status;
  String message;
  Data data;

  ServiceModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) => ServiceModel(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  Customer customer;

  Data({
    required this.customer,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        customer: Customer.fromJson(json["customer"]),
      );

  Map<String, dynamic> toJson() => {
        "customer": customer.toJson(),
      };
}

class Customer {
  int id;
  String name;
  String surname;
  String address;
  String phoneNumber;
  String emailAddress;
  String identityNumber;
  String subscriberNumber;
  DateTime membershipDate;
  String pppUsername;
  String pppPassword;
  int tariffType;
  DateTime tariffExpiryDate;
  String tariffPrice;
  int tariffId;
  String tariffName;
  String ipAddress;
  int staticIpStatus;
  String unpaidInvoiceAmount;

  Customer({
    required this.id,
    required this.name,
    required this.surname,
    required this.address,
    required this.phoneNumber,
    required this.emailAddress,
    required this.identityNumber,
    required this.subscriberNumber,
    required this.membershipDate,
    required this.pppUsername,
    required this.pppPassword,
    required this.tariffType,
    required this.tariffExpiryDate,
    required this.tariffPrice,
    required this.tariffId,
    required this.tariffName,
    required this.ipAddress,
    required this.staticIpStatus,
    required this.unpaidInvoiceAmount,
  });

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        id: json["id"],
        name: json["name"],
        surname: json["surname"],
        address: json["address"],
        phoneNumber: json["phoneNumber"],
        emailAddress: json["emailAddress"],
        identityNumber: json["identityNumber"],
        subscriberNumber: json["subscriberNumber"],
        membershipDate: DateTime.parse(json["membershipDate"]),
        pppUsername: json["pppUsername"],
        pppPassword: json["pppPassword"],
        tariffType: json["tariffType"],
        tariffExpiryDate: DateTime.parse(json["tariffExpiryDate"]),
        tariffPrice: json["tariffPrice"],
        tariffId: json["tariffId"],
        tariffName: json["tariffName"],
        ipAddress: json["ipAddress"],
        staticIpStatus: json["staticIpStatus"],
        unpaidInvoiceAmount: json["unpaidInvoiceAmount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "surname": surname,
        "address": address,
        "phoneNumber": phoneNumber,
        "emailAddress": emailAddress,
        "identityNumber": identityNumber,
        "subscriberNumber": subscriberNumber,
        "membershipDate":
            "${membershipDate.year.toString().padLeft(4, '0')}-${membershipDate.month.toString().padLeft(2, '0')}-${membershipDate.day.toString().padLeft(2, '0')}",
        "pppUsername": pppUsername,
        "pppPassword": pppPassword,
        "tariffType": tariffType,
        "tariffExpiryDate":
            "${tariffExpiryDate.year.toString().padLeft(4, '0')}-${tariffExpiryDate.month.toString().padLeft(2, '0')}-${tariffExpiryDate.day.toString().padLeft(2, '0')}",
        "tariffPrice": tariffPrice,
        "tariffId": tariffId,
        "tariffName": tariffName,
        "ipAddress": ipAddress,
        "staticIpStatus": staticIpStatus,
        "unpaidInvoiceAmount": unpaidInvoiceAmount,
      };
}

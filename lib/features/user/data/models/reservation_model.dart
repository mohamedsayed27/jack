import 'package:equatable/equatable.dart';

class ReservationModel extends Equatable {
  final int? id;
  final String? createdOn;
  final String? addressDetails;
  final double? total;
  final int? orderStatus;
  final Service? service;

  const ReservationModel({
    required this.id,
    required this.createdOn,
    required this.addressDetails,
    required this.total,
    required this.orderStatus,
    required this.service,
  });

  factory ReservationModel.fromJson(Map<String, dynamic> json) {
    return ReservationModel(
      id: json['id'],
      createdOn: json['createdOn'],
      addressDetails: json['addressDetails'],
      total: json['total'],
      orderStatus: json['orderStatus'],
      service: Service.fromJson(json['service']),
    );
  }

  @override
  List<Object?> get props => [
        id,
        createdOn,
        addressDetails,
        total,
        orderStatus,
        service,
      ];
}

class Service extends Equatable {
  final int? id;
  final String? title;
  final String? imgUrl;
  final bool? isAvailable;
  final double? finalPrice;

  const Service({
    required this.id,
    required this.title,
    required this.imgUrl,
    required this.isAvailable,
    required this.finalPrice,
  });

  factory Service.fromJson(Map<String, dynamic> json) {
    return Service(
      imgUrl: json['imgUrl'],
      id: json['id'],
      title: json['title'],
      isAvailable: json['isAvailable'],
      finalPrice: json['finalPrice'],
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        title,
        isAvailable,
        finalPrice,
        imgUrl,
      ];
}

import 'dart:convert';

import 'package:equatable/equatable.dart';

class CompanyEntity extends Equatable {
  final String id;
  final String name;
  final String profileImage;
  final String color;
  final String cnpj;
  final String nameEstablishment;
  final String phoneNumber;
  final String companyCreationDate;
  final String email;
  final String publicPlace;
  final String number;
  final String complement;
  final String zipCode;
  final String neighborhood;
  final String state;
  final String dynamicLink;
  final String qrCodeImage;
  const CompanyEntity({
    required this.id,
    required this.name,
    required this.profileImage,
    required this.color,
    required this.cnpj,
    required this.nameEstablishment,
    required this.phoneNumber,
    required this.companyCreationDate,
    required this.email,
    required this.publicPlace,
    required this.number,
    required this.complement,
    required this.zipCode,
    required this.neighborhood,
    required this.state,
    required this.dynamicLink,
    required this.qrCodeImage,
  });
  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'profileImage': profileImage});
    result.addAll({'color': color});
    result.addAll({'cnpj': cnpj});
    result.addAll({'nameEstablishment': nameEstablishment});
    result.addAll({'phoneNumber': phoneNumber});
    result.addAll({'companyCreationDate': companyCreationDate});
    result.addAll({'email': email});
    result.addAll({'publicPlace': publicPlace});
    result.addAll({'number': number});
    result.addAll({'complement': complement});
    result.addAll({'zipCode': zipCode});
    result.addAll({'neighborhood': neighborhood});
    result.addAll({'state': state});
    result.addAll({'dynamicLink': dynamicLink});
    result.addAll({'qrCodeImage': qrCodeImage});

    return result;
  }

  factory CompanyEntity.fromMap(Map<String, dynamic> map) {
    return CompanyEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      profileImage: map['profileImage'] ?? '',
      color: map['color'] ?? '',
      cnpj: map['cnpj'] ?? '',
      nameEstablishment: map['nameEstablishment'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
      companyCreationDate: map['companyCreationDate'] ?? '',
      email: map['email'] ?? '',
      publicPlace: map['publicPlace'] ?? '',
      number: map['number'] ?? '',
      complement: map['complement'] ?? '',
      zipCode: map['zipCode'] ?? '',
      neighborhood: map['neighborhood'] ?? '',
      state: map['state'] ?? '',
      dynamicLink: map['dynamicLink'] ?? '',
      qrCodeImage: map['qrCodeImage'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CompanyEntity.fromJson(String source) =>
      CompanyEntity.fromMap(json.decode(source));

  @override
  List<Object?> get props => [id, cnpj];
}

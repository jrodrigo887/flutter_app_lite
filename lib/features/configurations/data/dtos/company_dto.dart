part of data;

class CompanyDto {
  final String Id;
  final String Name;
  final String ProfileImage;
  final String Color;
  final String Cnpj;
  final String NameEstablishment;
  final String PhoneNumber;
  final String CompanyCreationDate;
  final String Email;
  final String PublicPlace;
  final String Number;
  final String Complement;
  final String ZipCode;
  final String Neighborhood;
  final String State;
  final String DynamicLink;
  final String QrCodeImage;
  CompanyDto({
    required this.Id,
    required this.Name,
    required this.ProfileImage,
    required this.Color,
    required this.Cnpj,
    required this.NameEstablishment,
    required this.PhoneNumber,
    required this.CompanyCreationDate,
    required this.Email,
    required this.PublicPlace,
    required this.Number,
    required this.Complement,
    required this.ZipCode,
    required this.Neighborhood,
    required this.State,
    required this.DynamicLink,
    required this.QrCodeImage,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
    result.addAll({'id': Id});
    result.addAll({'name': Name});
    result.addAll({'profileImage': ProfileImage});
    result.addAll({'color': Color});
    result.addAll({'cnpj': Cnpj});
    result.addAll({'nameEstablishment': NameEstablishment});
    result.addAll({'phoneNumber': PhoneNumber});
    result.addAll({'companyCreationDate': CompanyCreationDate});
    result.addAll({'email': Email});
    result.addAll({'publicPlace': PublicPlace});
    result.addAll({'number': Number});
    result.addAll({'complement': Complement});
    result.addAll({'zipCode': ZipCode});
    result.addAll({'neighborhood': Neighborhood});
    result.addAll({'state': State});
    result.addAll({'dynamicLink': DynamicLink});
    result.addAll({'qrCodeImage': QrCodeImage});

    return result;
  }

  factory CompanyDto.fromMap(Map<String, dynamic> map) {
    return CompanyDto(
      Id: map['Id'] ?? '',
      Name: map['Name'] ?? '',
      ProfileImage: map['ProfileImage'] ?? '',
      Color: map['Color'] ?? '',
      Cnpj: map['Cnpj'] ?? '',
      NameEstablishment: map['NameEstablishment'] ?? '',
      PhoneNumber: map['PhoneNumber'] ?? '',
      CompanyCreationDate: map['CompanyCreationDate'] ?? '',
      Email: map['Email'] ?? '',
      PublicPlace: map['PublicPlace'] ?? '',
      Number: map['Number'] ?? '',
      Complement: map['Complement'] ?? '',
      ZipCode: map['ZipCode'] ?? '',
      Neighborhood: map['Neighborhood'] ?? '',
      State: map['State'] ?? '',
      DynamicLink: map['DynamicLink'] ?? '',
      QrCodeImage: map['QrCodeImage'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CompanyDto.fromJson(String source) =>
      CompanyDto.fromMap(json.decode(source));
}

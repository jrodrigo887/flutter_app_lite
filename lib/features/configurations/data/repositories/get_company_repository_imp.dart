part of data;

class GetCompanyRepositoryImp extends GetCompanyRepository {
  final HttpClient _client;

  GetCompanyRepositoryImp(this._client);
  @override
  Future<Either<GetCompanyFailure, CompanyEntity>> execute(
      String companyId) async {
    try {
      final result = await _client.get('/admin/company/$companyId');
      var jsBytes = utf8.encode(result.body);
      var map = jsonDecode(utf8.decode(jsBytes));

      final companyDto = CompanyDto(
        Id: map['Id'] != null ? map['Id'].toString() : '',
        Name: map['Name'] != null ? map['Name'].toString() : '',
        ProfileImage:
            map['ProfileImage'] != null ? map['ProfileImage'].toString() : '',
        Color: map['Color'] != null ? map['Color'].toString() : '',
        Cnpj: map['Cnpj'] != null ? map['Cnpj'].toString() : '',
        NameEstablishment: map['NameEstablishment'] != null
            ? map['NameEstablishment'].toString()
            : '',
        PhoneNumber:
            map['PhoneNumber'] != null ? map['PhoneNumber'].toString() : '',
        CompanyCreationDate: map['CompanyCreationDate'] != null
            ? map['CompanyCreationDate'].toString()
            : '',
        Email: map['Email'] != null ? map['Email'].toString() : '',
        PublicPlace:
            map['PublicPlace'] != null ? map['PublicPlace'].toString() : '',
        Number: map['Number'] != null ? map['Number'].toString() : '',
        Complement:
            map['Complement'] != null ? map['Complement'].toString() : '',
        ZipCode: map['ZipCode'] != null ? map['ZipCode'].toString() : '',
        Neighborhood:
            map['Neighborhood'] != null ? map['Neighborhood'].toString() : '',
        State: map['State'] != null ? map['State'].toString() : '',
        DynamicLink:
            map['DynamicLink'] != null ? map['DynamicLink'].toString() : '',
        QrCodeImage:
            map['QrCodeImage'] != null ? map['QrCodeImage'].toString() : '',
      );
      var entity = CompanyEntity.fromMap(companyDto.toMap());
      return Right(entity);
    } catch (e) {
      return Left(GetCompanyFailure("Falha ao carregar dados do company"));
    }
  }
}

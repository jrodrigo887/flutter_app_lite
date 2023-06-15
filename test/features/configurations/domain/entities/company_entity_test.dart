import 'package:flutter_test/flutter_test.dart';
import 'package:desafio_pessoal/features/configurations/domain/entities/company_entity.dart';

void main() {
  testWidgets('Should create CompanyEntity instance', (tester) async {
    const company = CompanyEntity(
        id: '123',
        name: 'joao',
        profileImage: 'image',
        color: '#656565',
        cnpj: '050310/1111-50',
        nameEstablishment: 'marisol',
        phoneNumber: '55 47 95785468',
        companyCreationDate: '2023-05-07T09:27:00',
        email: 'junt@test.com',
        publicPlace: 'Av Marques',
        number: '37',
        complement: 'Edificio',
        zipCode: '55032745',
        neighborhood: 'Rua',
        state: 'Cacimba',
        dynamicLink: 'sem-link',
        qrCodeImage: 'img');

    expect(company.email, equals('junt@test.com'));
    expect(company.id, equals('123'));
    expect(company.number, equals('37'));
    expect(company.publicPlace, equals('Av Marques'));
  });
}


// const teste = {"Id":94612025-d6f5-4951-91f0-118016d92944,
//    "Name":"Impressao Digital",
//    "ProfileImage":"https://api-dev.certfy.tech/onboarding/internal/api/Images/Company/94612025-d6f5-4951-91f0-118016d92944",
//    "QrCodeImage":"https://api-dev.certfy.tech/onboarding/internal/api/Images/QrCode/Company/94612025-d6f5-4951-91f0-118016d92944",
//    "DynamicLink":"https://certfyremotedev.page.link/EdS3YEC2akL4ji3r8#cXVldWU9OTQ2MTIwMjUtZDZmNS00OTUxLTkxZjAtMTE4MDE2ZDkyOTQ0",
//    "Color":#3B3C3D,
//    "Cnpj":92.475.455/0001-81,
//    "NameEstablishment":"Impressao Digital",
//    "PhoneNumber":"(  )     -",
//    "CompanyCreationDate":"1991-01-01T00":"00":00,
//    "Email":"imp@gmail.com",
//    "PublicPlace":"Rua da minha casa",
//    "Number":666,
//    "Complement":"ao lado do fim do mundo",
//    "ZipCode":58087-340,
//    "Neighborhood":"joao das botas",
//    "State":null 
//    };
import 'package:desafio_pessoal/features/configurations/data/data.dart';
import 'package:desafio_pessoal/features/configurations/domain/entities/company_entity.dart';

CompanyEntity get mockCompanyEntity => const CompanyEntity(
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

CompanyEntity get mockCompanyEntity2 => const CompanyEntity(
    id: '321456',
    name: 'Silveira',
    profileImage: 'image',
    color: '#656565',
    cnpj: '050310/1111-80',
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

CompanyDto get mockCompanyDto => CompanyDto(
      Id: '321',
      Name: 'Jonhathan',
      ProfileImage: 'https//:www.imagem.com',
      Color: '#c4c4c4',
      Cnpj: '346501/0001-52',
      NameEstablishment: 'Imperio',
      PhoneNumber: '83697801',
      CompanyCreationDate: '2022-10-14T15:32:00',
      Email: 'imperio@gmail.com',
      PublicPlace: 'Av das águas',
      Number: '34',
      Complement: 'Em frente as oliveiras',
      ZipCode: '57056-528',
      Neighborhood: 'Av marcio luna',
      State: 'Paraíba',
      DynamicLink: 'https://swww.htpas.imca/#asdflkjdaiuh#asdflkj',
      QrCodeImage: 'imagem',
    );

import 'package:desafio_pessoal/features/configurations/data/data.dart';
import 'package:desafio_pessoal/features/configurations/domain/entities/company_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../mocks/entities/mock_company.dart';

void main() {
  group('company dto ...', () {
    test('Shoul covert Company dto to Company Entity', () {
      CompanyDto compnayDto = mockCompanyDto;
      CompanyEntity convertToEntity = CompanyEntity.fromMap(compnayDto.toMap());

      expect(convertToEntity, isA<CompanyEntity>());
      expect(convertToEntity.email, equals('imperio@gmail.com'));
      expect(convertToEntity.id, equals('321'));
    });
  });
}

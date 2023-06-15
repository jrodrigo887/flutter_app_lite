import 'package:dartz/dartz.dart';
import 'package:desafio_pessoal/core/errors/get_company_error.dart';
import 'package:desafio_pessoal/features/configurations/domain/entities/company_entity.dart';
import 'package:desafio_pessoal/features/configurations/domain/repositories/company_repository.dart';
import 'package:desafio_pessoal/features/configurations/domain/usecases/get_configurations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'get_configurations_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<CompanyEntity>(),
  MockSpec<GetCompanyRepository>(),
  MockSpec<GetCompanyFailure>(),
  MockSpec<GetConfigurations>(),
])
void main() {
  late final MockGetCompanyRepository companyRepositoryImp;
  late final MockCompanyEntity companyEntity;
  late final MockGetCompanyFailure failure;
  late final MockGetConfigurations mockGetConfigurations;

  setUpAll(() {
    // httpClient = MockHttpClient();
    companyRepositoryImp = MockGetCompanyRepository();
    companyEntity = MockCompanyEntity();
    failure = MockGetCompanyFailure();
    mockGetConfigurations = MockGetConfigurations();
  });

  group('Repository Company => ', () {
    test('Deve retorna a entidade company', () async {
      var url = Uri.parse('http://localhost:8080');

      when(companyRepositoryImp.execute(url.toString())).thenAnswer((_) async {
        return Right(companyEntity);
      });
      // act
      final Either<GetCompanyFailure, CompanyEntity> result =
          await companyRepositoryImp.execute(url.toString());
      // assert
      result.fold((l) => fail('Não foi possível'), (r) {
        verify(companyRepositoryImp.execute(url.toString())).called(1);
        expect(r, isA<MockCompanyEntity>());
      });
    });
    test('Deve retorna uma exception', () async {
      var url = Uri.parse('http://localhost:8080');

      when(companyRepositoryImp.execute(url.toString())).thenAnswer((_) async {
        return Left(failure);
      });
      // act
      final Either<GetCompanyFailure, CompanyEntity> result =
          await companyRepositoryImp.execute(url.toString());
      // assert
      result.fold(
          (l) => {expect(l, isA<MockGetCompanyFailure>())}, (r) => null);
      verify(companyRepositoryImp.execute(url.toString())).called(1);
      expect(result.isLeft(), equals(true));
    });
  });
  group('Usecase get company => ', () {
    test('Deve retorna a entidade company', () async {
      const companyId = CompanyId('1238-6548-32158-12356');

      when(mockGetConfigurations.execute(companyId)).thenAnswer((_) async {
        return Right(companyEntity);
      });
      // act
      var result = await mockGetConfigurations.execute(companyId);
      // assert
      result.fold((l) => fail('Error'), (r) {
        expect(r, isA<MockCompanyEntity>());
        verify(mockGetConfigurations.execute(companyId)).called(1);
      });
    });
  });
}

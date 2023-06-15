import 'package:dartz/dartz.dart';
import 'package:desafio_pessoal/core/errors/get_company_error.dart';
import 'package:equatable/equatable.dart';

import 'package:desafio_pessoal/core/usecase.dart';
import 'package:desafio_pessoal/features/configurations/domain/entities/company_entity.dart';
import 'package:desafio_pessoal/features/configurations/domain/repositories/company_repository.dart';

class GetConfigurations extends UseCase<CompanyEntity, CompanyId> {
  final GetCompanyRepository companyRepository;
  GetConfigurations(this.companyRepository);

  @override
  Future<Either<GetCompanyFailure, CompanyEntity>> execute(
      CompanyId param) async {
    final result = await companyRepository.execute(param.id);
    return result;
  }
}

class CompanyId extends Equatable {
  final String id;

  const CompanyId(this.id);

  @override
  List<Object?> get props => [id];
}

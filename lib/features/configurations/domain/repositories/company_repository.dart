import 'package:desafio_pessoal/core/errors/get_company_error.dart';

import '../entities/company_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetCompanyRepository {
  Future<Either<GetCompanyFailure, CompanyEntity>> execute(String companyId);
}

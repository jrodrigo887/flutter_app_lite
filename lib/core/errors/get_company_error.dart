import 'package:desafio_pessoal/core/errors/failure.dart';

class GetCompanyFailure extends Failure {
  final String message;
  GetCompanyFailure(this.message) : super([message]);

  @override
  List<Object> get props => [message];
}

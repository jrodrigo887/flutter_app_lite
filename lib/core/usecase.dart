import 'package:dartz/dartz.dart';
import 'package:desafio_pessoal/core/errors/failure.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<T, Params> {
  Future<Either<Failure, T>> execute(Params param);
}

class NoParams extends Equatable {
  const NoParams();

  @override
  List<Object?> get props => [];
}

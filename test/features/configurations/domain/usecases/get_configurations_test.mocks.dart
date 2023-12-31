// Mocks generated by Mockito 5.4.0 from annotations
// in desafio_pessoal/test/features/configurations/domain/usecases/get_configurations_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i2;
import 'package:desafio_pessoal/core/errors/get_company_error.dart' as _i6;
import 'package:desafio_pessoal/features/configurations/domain/entities/company_entity.dart'
    as _i4;
import 'package:desafio_pessoal/features/configurations/domain/repositories/company_repository.dart'
    as _i3;
import 'package:desafio_pessoal/features/configurations/domain/usecases/get_configurations.dart'
    as _i7;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGetCompanyRepository_1 extends _i1.SmartFake
    implements _i3.GetCompanyRepository {
  _FakeGetCompanyRepository_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [CompanyEntity].
///
/// See the documentation for Mockito's code generation for more information.
class MockCompanyEntity extends _i1.Mock implements _i4.CompanyEntity {
  @override
  String get id => (super.noSuchMethod(
        Invocation.getter(#id),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get name => (super.noSuchMethod(
        Invocation.getter(#name),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get profileImage => (super.noSuchMethod(
        Invocation.getter(#profileImage),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get color => (super.noSuchMethod(
        Invocation.getter(#color),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get cnpj => (super.noSuchMethod(
        Invocation.getter(#cnpj),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get nameEstablishment => (super.noSuchMethod(
        Invocation.getter(#nameEstablishment),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get phoneNumber => (super.noSuchMethod(
        Invocation.getter(#phoneNumber),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get companyCreationDate => (super.noSuchMethod(
        Invocation.getter(#companyCreationDate),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get email => (super.noSuchMethod(
        Invocation.getter(#email),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get publicPlace => (super.noSuchMethod(
        Invocation.getter(#publicPlace),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get number => (super.noSuchMethod(
        Invocation.getter(#number),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get complement => (super.noSuchMethod(
        Invocation.getter(#complement),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get zipCode => (super.noSuchMethod(
        Invocation.getter(#zipCode),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get neighborhood => (super.noSuchMethod(
        Invocation.getter(#neighborhood),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get dynamicLink => (super.noSuchMethod(
        Invocation.getter(#dynamicLink),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get qrCodeImage => (super.noSuchMethod(
        Invocation.getter(#qrCodeImage),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  List<Object?> get props => (super.noSuchMethod(
        Invocation.getter(#props),
        returnValue: <Object?>[],
        returnValueForMissingStub: <Object?>[],
      ) as List<Object?>);
  @override
  Map<String, dynamic> toMap() => (super.noSuchMethod(
        Invocation.method(
          #toMap,
          [],
        ),
        returnValue: <String, dynamic>{},
        returnValueForMissingStub: <String, dynamic>{},
      ) as Map<String, dynamic>);
  @override
  String toJson() => (super.noSuchMethod(
        Invocation.method(
          #toJson,
          [],
        ),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
}

/// A class which mocks [GetCompanyRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetCompanyRepository extends _i1.Mock
    implements _i3.GetCompanyRepository {
  @override
  _i5.Future<_i2.Either<_i6.GetCompanyFailure, _i4.CompanyEntity>> execute(
          String? companyId) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [companyId],
        ),
        returnValue: _i5.Future<
                _i2.Either<_i6.GetCompanyFailure, _i4.CompanyEntity>>.value(
            _FakeEither_0<_i6.GetCompanyFailure, _i4.CompanyEntity>(
          this,
          Invocation.method(
            #execute,
            [companyId],
          ),
        )),
        returnValueForMissingStub: _i5.Future<
                _i2.Either<_i6.GetCompanyFailure, _i4.CompanyEntity>>.value(
            _FakeEither_0<_i6.GetCompanyFailure, _i4.CompanyEntity>(
          this,
          Invocation.method(
            #execute,
            [companyId],
          ),
        )),
      ) as _i5.Future<_i2.Either<_i6.GetCompanyFailure, _i4.CompanyEntity>>);
}

/// A class which mocks [GetCompanyFailure].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetCompanyFailure extends _i1.Mock implements _i6.GetCompanyFailure {
  @override
  String get message => (super.noSuchMethod(
        Invocation.getter(#message),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  List<Object> get props => (super.noSuchMethod(
        Invocation.getter(#props),
        returnValue: <Object>[],
        returnValueForMissingStub: <Object>[],
      ) as List<Object>);
}

/// A class which mocks [GetConfigurations].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetConfigurations extends _i1.Mock implements _i7.GetConfigurations {
  @override
  _i3.GetCompanyRepository get companyRepository => (super.noSuchMethod(
        Invocation.getter(#companyRepository),
        returnValue: _FakeGetCompanyRepository_1(
          this,
          Invocation.getter(#companyRepository),
        ),
        returnValueForMissingStub: _FakeGetCompanyRepository_1(
          this,
          Invocation.getter(#companyRepository),
        ),
      ) as _i3.GetCompanyRepository);
  @override
  _i5.Future<_i2.Either<_i6.GetCompanyFailure, _i4.CompanyEntity>> execute(
          _i7.CompanyId? param) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [param],
        ),
        returnValue: _i5.Future<
                _i2.Either<_i6.GetCompanyFailure, _i4.CompanyEntity>>.value(
            _FakeEither_0<_i6.GetCompanyFailure, _i4.CompanyEntity>(
          this,
          Invocation.method(
            #execute,
            [param],
          ),
        )),
        returnValueForMissingStub: _i5.Future<
                _i2.Either<_i6.GetCompanyFailure, _i4.CompanyEntity>>.value(
            _FakeEither_0<_i6.GetCompanyFailure, _i4.CompanyEntity>(
          this,
          Invocation.method(
            #execute,
            [param],
          ),
        )),
      ) as _i5.Future<_i2.Either<_i6.GetCompanyFailure, _i4.CompanyEntity>>);
}

import 'package:desafio_pessoal/core/domain/entities/terms_of_use_configuration_dto.dart';
import 'package:desafio_pessoal/core/domain/mappers/data_consent_configuration_mapper.dart';

import '../entities/entities.dart';

abstract class TermOfUseConfigurationMapper {
  static TermsOfUseConfiguration fromDto(TermsOfUseConfigurationDto dto) {
    return TermsOfUseConfiguration(
        oid: dto.oid,
        title: dto.title,
        termsOfUseText: dto.termsOfUseText,
        dataConsentConfigurations: dto.dataConsentConfigurations
            .map((e) => DataConsentConfigurationMapper.fromDto(e))
            .toList());
  }

  static TermsOfUseConfigurationDto toDto(TermsOfUseConfiguration terms) {
    return TermsOfUseConfigurationDto(
        oid: terms.oid,
        title: terms.title,
        termsOfUseText: terms.termsOfUseText,
        dataConsentConfigurations: terms.dataConsentConfigurations
            .map((e) => DataConsentConfigurationMapper.toDto(e))
            .toList());
  }
}

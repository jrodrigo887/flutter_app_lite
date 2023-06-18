import 'package:desafio_pessoal/core/domain/entities/data_consent_item_configuration_dto.dart';
import 'package:desafio_pessoal/core/domain/entities/entities.dart';

abstract class DataConsentItemConfigurationMapper {
  static DataConsentItemConfiguration fromDto(
      DataConsentItemConfigurationDto dto) {
    return DataConsentItemConfiguration(
        oid: dto.oid,
        name: dto.name,
        description: dto.description,
        defaultAllowValue: dto.defaultAllowValue,
        mandatory: dto.mandatory);
  }

  static DataConsentItemConfigurationDto toDto(
      DataConsentItemConfiguration data) {
    return DataConsentItemConfigurationDto(
        oid: data.oid,
        name: data.name,
        description: data.description,
        defaultAllowValue: data.defaultAllowValue,
        mandatory: data.mandatory);
  }
}

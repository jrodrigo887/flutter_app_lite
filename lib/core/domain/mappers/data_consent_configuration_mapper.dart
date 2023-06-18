import 'package:desafio_pessoal/core/domain/entities/data_consent_configuration_dto.dart';
import 'package:desafio_pessoal/core/domain/entities/entities.dart';
import 'package:desafio_pessoal/core/domain/mappers/data_consent_item_configuration_mapper.dart';

abstract class DataConsentConfigurationMapper {
  static DataConsentConfiguration fromDto(DataConsentConfigurationDto dto) {
    return DataConsentConfiguration(
        oid: dto.oid,
        title: dto.title,
        dataConsentText: dto.dataConsentText,
        dataConsentItemConfigurations: dto.dataConsentItemConfigurations
            .map((e) => DataConsentItemConfigurationMapper.fromDto(e))
            .toList());
  }

  static DataConsentConfigurationDto toDto(DataConsentConfiguration data) {
    return DataConsentConfigurationDto(
        oid: data.oid,
        title: data.title,
        dataConsentText: data.dataConsentText,
        dataConsentItemConfigurations: data.dataConsentItemConfigurations
            .map((e) => DataConsentItemConfigurationMapper.toDto(e))
            .toList());
  }
}

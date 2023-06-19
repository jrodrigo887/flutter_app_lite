part of mappers;

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

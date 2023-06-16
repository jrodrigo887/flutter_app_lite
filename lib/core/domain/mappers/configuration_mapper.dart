import 'package:desafio_pessoal/core/domain/entities/configurations_dto.dart';
import 'package:desafio_pessoal/core/domain/entities/entities.dart';

class ConfigurationMapper {
  static Configuration fromDto(ConfigurationDto configDto) {
    return Configuration(
      scheduleConfigurationType: configDto.scheduleCertificationItengrationType,
      toleranceConfiguration: configDto.toleranceConfiguration,
      messages: configDto.messages,
      oid: configDto.oid,
      name: configDto.name,
      companyId: configDto.companyId,
      order: configDto.order,
      userIdentification: configDto.userIdentification,
      applyScheduleCertificationIntegration:
          configDto.applyScheduleCertificationIntegration,
      scheduleCertificationItengrationType:
          configDto.scheduleCertificationItengrationType,
      capturePlatform: configDto.capturePlatform,
    );
  }

  static ConfigurationDto toDto(Configuration config) {
    return ConfigurationDto(
      scheduleConfigurationType: config.scheduleCertificationItengrationType,
      toleranceConfiguration: config.toleranceConfiguration,
      messages: config.messages,
      oid: config.oid,
      name: config.name,
      companyId: config.companyId,
      order: config.order,
      userIdentification: config.userIdentification,
      applyScheduleCertificationIntegration:
          config.applyScheduleCertificationIntegration,
      scheduleCertificationItengrationType:
          config.scheduleCertificationItengrationType,
      capturePlatform: config.capturePlatform,
    );
  }
}

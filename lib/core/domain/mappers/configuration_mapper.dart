import 'package:desafio_pessoal/core/domain/entities/capture_entry_configuration_dto.dart';
import 'package:desafio_pessoal/core/domain/entities/configurations_dto.dart';
import 'package:desafio_pessoal/core/domain/entities/entities.dart';
import 'package:desafio_pessoal/core/domain/mappers/assistance_queue_mapper.dart';
import 'package:desafio_pessoal/core/domain/mappers/term_of_use_configuration_mapper.dart';

class ConfigurationMapper {
  static Configuration fromDto(ConfigurationDto configDto) {
    return Configuration(
        scheduleConfigurationType:
            configDto.scheduleCertificationItengrationType,
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
        captureEntryConfigurations: configDto.captureEntryConfigurations
            .map((cc) => CaptureEntryConfiguration(
                captureEntryType: cc.captureEntryType,
                name: cc.name,
                oid: cc.oid,
                caption: cc.caption,
                mandatory: cc.mandatory))
            .toList(),
        assistanceQueue:
            AssistanceQueueMapper.fromDto(configDto.assistanceQueue),
        termsOfUseConfiguration: TermOfUseConfigurationMapper.fromDto(
            configDto.termsOfUseConfiguration));
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
        captureEntryConfigurations: config.captureEntryConfigurations
            .map((cc) => CaptureEntryConfigurationDto(
                captureEntryType: cc.captureEntryType,
                name: cc.name,
                oid: cc.oid,
                caption: cc.caption,
                mandatory: cc.mandatory))
            .toList(),
        assistanceQueue: AssistanceQueueMapper.toDto(config.assistanceQueue),
        termsOfUseConfiguration:
            TermOfUseConfigurationMapper.toDto(config.termsOfUseConfiguration));
  }
}

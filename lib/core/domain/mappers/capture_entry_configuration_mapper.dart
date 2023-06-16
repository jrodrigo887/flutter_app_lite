import 'package:desafio_pessoal/core/domain/entities/capture_entry_configuration_dto.dart';
import 'package:desafio_pessoal/core/domain/entities/entities.dart';

class CaptureEntryConfigurationMapper {
  static CaptureEntryConfiguration fromDto(
      CaptureEntryConfigurationDto capture) {
    return CaptureEntryConfiguration(
      captureEntryType: capture.captureEntryType,
      name: capture.name,
      oid: capture.oid,
      caption: capture.caption,
      mandatory: capture.mandatory,
      isExternalCapture: capture.isExternalCapture,
      replied: capture.replied,
    );
  }

  static CaptureEntryConfigurationDto toDto(CaptureEntryConfiguration capture) {
    return CaptureEntryConfigurationDto(
      captureEntryType: capture.captureEntryType,
      name: capture.name,
      oid: capture.oid,
      caption: capture.caption,
      mandatory: capture.mandatory,
      isExternalCapture: capture.isExternalCapture,
      replied: capture.replied,
    );
  }
}

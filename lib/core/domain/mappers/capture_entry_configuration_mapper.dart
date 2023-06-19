part of mappers;

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

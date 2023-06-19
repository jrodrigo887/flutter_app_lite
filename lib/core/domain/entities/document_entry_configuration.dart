part of entities;

// ignore: must_be_immutable
class DocumentEntryConfiguration extends CaptureEntryConfiguration {
  String cameraDirection;
  String cameraSelection;

  DocumentEntryConfiguration({
    required this.cameraDirection,
    required this.cameraSelection,
    required super.captureEntryType,
    required super.name,
    required super.oid,
    required super.caption,
    required super.mandatory,
  });
}

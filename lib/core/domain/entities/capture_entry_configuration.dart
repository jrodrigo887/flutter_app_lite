part of entities;

// ignore: must_be_immutable
class CaptureEntryConfiguration extends Equatable {
  String captureEntryType;
  String name;
  String oid;
  String caption;
  bool mandatory;
  String? isExternalCapture;
  String? replied;
  CaptureEntryConfiguration({
    required this.captureEntryType,
    required this.name,
    required this.oid,
    required this.caption,
    required this.mandatory,
    this.isExternalCapture,
    this.replied,
  });

  @override
  List<Object?> get props => [oid];
}

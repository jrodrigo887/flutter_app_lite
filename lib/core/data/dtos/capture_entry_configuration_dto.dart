part of dtos;

class CaptureEntryConfigurationDto {
  String captureEntryType;
  String name;
  String oid;
  String caption;
  bool mandatory;
  String? isExternalCapture;
  String? replied;
  CaptureEntryConfigurationDto({
    required this.captureEntryType,
    required this.name,
    required this.oid,
    required this.caption,
    required this.mandatory,
    this.isExternalCapture,
    this.replied,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'CaptureEntryType': captureEntryType,
      'Name': name,
      'Oid': oid,
      'Caption': caption,
      'Mandatory': mandatory,
      'IsExternalCapture': isExternalCapture,
      'Replied': replied,
    };
  }

  factory CaptureEntryConfigurationDto.fromMap(Map<String, dynamic> map) {
    return CaptureEntryConfigurationDto(
      captureEntryType: map['CaptureEntryType'] as String,
      name: map['Name'] as String,
      oid: map['Oid'] as String,
      caption: map['Caption'] as String,
      mandatory: map['Mandatory'] as bool,
      isExternalCapture: map['IsExternalCapture'] != null
          ? map['IsExternalCapture'] as String
          : null,
      replied: map['Replied'] != null ? map['Replied'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CaptureEntryConfigurationDto.fromJson(String source) =>
      CaptureEntryConfigurationDto.fromMap(
          json.decode(source) as Map<String, dynamic>);
}

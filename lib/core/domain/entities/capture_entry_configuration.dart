part of entities;

class CaptureEntryConfiguration extends Equatable {
  final String? captureEntryType;
  final bool? validateBiopassIdFeatures;
  final String? fingerPrintHand;
  final bool? applyNfiq;
  final String? oid;
  final bool? mandatory;
  final bool? connect;
  final String? caption;
  final dynamic identifier;
  final String? name;
  final String? companyId;
  final int? order;
  final bool? recordCall;
  final List<Field>? fields;
  final bool? isExternalCapture;
  final bool? ocrLink;
  final dynamic identificationDocumentCaptureEntryConfiguration;
  final bool? validateIcaoFeatures;
  final String? cameraDirection;
  final String? cameraSelection;
  final String? referenceCapture;

  const CaptureEntryConfiguration({
    this.captureEntryType,
    this.validateBiopassIdFeatures,
    this.fingerPrintHand,
    this.applyNfiq,
    this.oid,
    this.mandatory,
    this.connect,
    this.caption,
    this.identifier,
    this.name,
    this.companyId,
    this.order,
    this.recordCall,
    this.fields,
    this.isExternalCapture,
    this.ocrLink,
    this.identificationDocumentCaptureEntryConfiguration,
    this.validateIcaoFeatures,
    this.cameraDirection,
    this.cameraSelection,
    this.referenceCapture,
  });

  factory CaptureEntryConfiguration.fromMap(Map<String, dynamic> data) {
    return CaptureEntryConfiguration(
      captureEntryType: data['CaptureEntryType'] as String?,
      validateBiopassIdFeatures: data['ValidateBiopassIDFeatures'] as bool?,
      fingerPrintHand: data['FingerPrintHand'] as String?,
      applyNfiq: data['ApplyNFIQ'] as bool?,
      oid: data['Oid'] as String?,
      mandatory: data['Mandatory'] as bool?,
      connect: data['Connect'] as bool?,
      caption: data['Caption'] as String?,
      identifier: data['Identifier'] as dynamic,
      name: data['Name'] as String?,
      companyId: data['CompanyId'] as String?,
      order: data['Order'] as int?,
      recordCall: data['RecordCall'] as bool?,
      fields: (data['Fields'] as List<dynamic>?)
          ?.map((e) => Field.fromMap(e as Map<String, dynamic>))
          .toList(),
      isExternalCapture: data['IsExternalCapture'] as bool?,
      ocrLink: data['OcrLink'] as bool?,
      identificationDocumentCaptureEntryConfiguration:
          data['IdentificationDocumentCaptureEntryConfiguration'] as dynamic,
      validateIcaoFeatures: data['ValidateIcaoFeatures'] as bool?,
      cameraDirection: data['CameraDirection'] as String?,
      cameraSelection: data['CameraSelection'] as String?,
      referenceCapture: data['ReferenceCapture'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'CaptureEntryType': captureEntryType,
        'ValidateBiopassIDFeatures': validateBiopassIdFeatures,
        'FingerPrintHand': fingerPrintHand,
        'ApplyNFIQ': applyNfiq,
        'Oid': oid,
        'Mandatory': mandatory,
        'Connect': connect,
        'Caption': caption,
        'Identifier': identifier,
        'Name': name,
        'CompanyId': companyId,
        'Order': order,
        'RecordCall': recordCall,
        'Fields': fields?.map((e) => e.toMap()).toList(),
        'IsExternalCapture': isExternalCapture,
        'OcrLink': ocrLink,
        'IdentificationDocumentCaptureEntryConfiguration':
            identificationDocumentCaptureEntryConfiguration,
        'ValidateIcaoFeatures': validateIcaoFeatures,
        'CameraDirection': cameraDirection,
        'CameraSelection': cameraSelection,
        'ReferenceCapture': referenceCapture,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CaptureEntryConfiguration].
  factory CaptureEntryConfiguration.fromJson(String data) {
    return CaptureEntryConfiguration.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CaptureEntryConfiguration] to a JSON string.
  String toJson() => json.encode(toMap());

  CaptureEntryConfiguration copyWith({
    String? captureEntryType,
    bool? validateBiopassIdFeatures,
    String? fingerPrintHand,
    bool? applyNfiq,
    String? oid,
    bool? mandatory,
    bool? connect,
    String? caption,
    dynamic identifier,
    String? name,
    String? companyId,
    int? order,
    bool? recordCall,
    List<Field>? fields,
    bool? isExternalCapture,
    bool? ocrLink,
    dynamic identificationDocumentCaptureEntryConfiguration,
    bool? validateIcaoFeatures,
    String? cameraDirection,
    String? cameraSelection,
    String? referenceCapture,
  }) {
    return CaptureEntryConfiguration(
      captureEntryType: captureEntryType ?? this.captureEntryType,
      validateBiopassIdFeatures:
          validateBiopassIdFeatures ?? this.validateBiopassIdFeatures,
      fingerPrintHand: fingerPrintHand ?? this.fingerPrintHand,
      applyNfiq: applyNfiq ?? this.applyNfiq,
      oid: oid ?? this.oid,
      mandatory: mandatory ?? this.mandatory,
      connect: connect ?? this.connect,
      caption: caption ?? this.caption,
      identifier: identifier ?? this.identifier,
      name: name ?? this.name,
      companyId: companyId ?? this.companyId,
      order: order ?? this.order,
      recordCall: recordCall ?? this.recordCall,
      fields: fields ?? this.fields,
      isExternalCapture: isExternalCapture ?? this.isExternalCapture,
      ocrLink: ocrLink ?? this.ocrLink,
      identificationDocumentCaptureEntryConfiguration:
          identificationDocumentCaptureEntryConfiguration ??
              this.identificationDocumentCaptureEntryConfiguration,
      validateIcaoFeatures: validateIcaoFeatures ?? this.validateIcaoFeatures,
      cameraDirection: cameraDirection ?? this.cameraDirection,
      cameraSelection: cameraSelection ?? this.cameraSelection,
      referenceCapture: referenceCapture ?? this.referenceCapture,
    );
  }

  @override
  List<Object?> get props {
    return [
      oid,
      companyId,
    ];
  }
}

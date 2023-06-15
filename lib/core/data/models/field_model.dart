part of models;

class FieldModel extends Equatable {
  final String? captureEntryType;
  final String? type;
  final List<dynamic>? options;
  final FormFieldDynamicModel? formFieldDynamic;
  final String? ocrFieldName;
  final int? initialRange;
  final int? finalRange;
  final bool? srcCep;
  final bool? srcCepField;
  final String? correiosField;
  final String? fieldsForIntegration;
  final dynamic externalCapture;
  final String? oid;
  final bool? mandatory;
  final bool? connect;
  final dynamic caption;
  final dynamic identifier;
  final String? name;
  final String? companyId;
  final int? order;

  const FieldModel({
    this.captureEntryType,
    this.type,
    this.options,
    this.formFieldDynamic,
    this.ocrFieldName,
    this.initialRange,
    this.finalRange,
    this.srcCep,
    this.srcCepField,
    this.correiosField,
    this.fieldsForIntegration,
    this.externalCapture,
    this.oid,
    this.mandatory,
    this.connect,
    this.caption,
    this.identifier,
    this.name,
    this.companyId,
    this.order,
  });

  factory FieldModel.fromMap(Map<String, dynamic> data) => FieldModel(
        captureEntryType: data['CaptureEntryType'] as String?,
        type: data['Type'] as String?,
        options: data['Options'] as List<dynamic>?,
        formFieldDynamic: data['FormFieldDynamic'] == null
            ? null
            : FormFieldDynamicModel.fromMap(
                data['FormFieldDynamic'] as Map<String, dynamic>),
        ocrFieldName: data['OcrFieldName'] as String?,
        initialRange: data['InitialRange'] as int?,
        finalRange: data['FinalRange'] as int?,
        srcCep: data['SrcCep'] as bool?,
        srcCepField: data['SrcCepField'] as bool?,
        correiosField: data['CorreiosField'] as String?,
        fieldsForIntegration: data['FieldsForIntegration'] as String?,
        externalCapture: data['ExternalCapture'] as dynamic,
        oid: data['Oid'] as String?,
        mandatory: data['Mandatory'] as bool?,
        connect: data['Connect'] as bool?,
        caption: data['Caption'] as dynamic,
        identifier: data['Identifier'] as dynamic,
        name: data['Name'] as String?,
        companyId: data['CompanyId'] as String?,
        order: data['Order'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'CaptureEntryType': captureEntryType,
        'Type': type,
        'Options': options,
        'FormFieldDynamic': formFieldDynamic?.toMap(),
        'OcrFieldName': ocrFieldName,
        'InitialRange': initialRange,
        'FinalRange': finalRange,
        'SrcCep': srcCep,
        'SrcCepField': srcCepField,
        'CorreiosField': correiosField,
        'FieldsForIntegration': fieldsForIntegration,
        'ExternalCapture': externalCapture,
        'Oid': oid,
        'Mandatory': mandatory,
        'Connect': connect,
        'Caption': caption,
        'Identifier': identifier,
        'Name': name,
        'CompanyId': companyId,
        'Order': order,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [FieldModel].
  factory FieldModel.fromJson(String data) {
    return FieldModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [FieldModel] to a JSON string.
  String toJson() => json.encode(toMap());

  FieldModel copyWith({
    String? captureEntryType,
    String? type,
    List<dynamic>? options,
    FormFieldDynamicModel? formFieldDynamic,
    String? ocrFieldName,
    int? initialRange,
    int? finalRange,
    bool? srcCep,
    bool? srcCepField,
    String? correiosField,
    String? fieldsForIntegration,
    dynamic externalCapture,
    String? oid,
    bool? mandatory,
    bool? connect,
    dynamic caption,
    dynamic identifier,
    String? name,
    String? companyId,
    int? order,
  }) {
    return FieldModel(
      captureEntryType: captureEntryType ?? this.captureEntryType,
      type: type ?? this.type,
      options: options ?? this.options,
      formFieldDynamic: formFieldDynamic ?? this.formFieldDynamic,
      ocrFieldName: ocrFieldName ?? this.ocrFieldName,
      initialRange: initialRange ?? this.initialRange,
      finalRange: finalRange ?? this.finalRange,
      srcCep: srcCep ?? this.srcCep,
      srcCepField: srcCepField ?? this.srcCepField,
      correiosField: correiosField ?? this.correiosField,
      fieldsForIntegration: fieldsForIntegration ?? this.fieldsForIntegration,
      externalCapture: externalCapture ?? this.externalCapture,
      oid: oid ?? this.oid,
      mandatory: mandatory ?? this.mandatory,
      connect: connect ?? this.connect,
      caption: caption ?? this.caption,
      identifier: identifier ?? this.identifier,
      name: name ?? this.name,
      companyId: companyId ?? this.companyId,
      order: order ?? this.order,
    );
  }

  @override
  List<Object?> get props => [oid];
}

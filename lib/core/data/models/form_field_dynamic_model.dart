part of models;

class FormFieldDynamicModel {
  final dynamic url;
  final dynamic fieldAttribute;
  final FormFieldDynamicControlModel? formFieldDynamicControl;

  const FormFieldDynamicModel({
    this.url,
    this.fieldAttribute,
    this.formFieldDynamicControl,
  });

  factory FormFieldDynamicModel.fromMap(Map<String, dynamic> data) {
    return FormFieldDynamicModel(
      url: data['Url'] as dynamic,
      fieldAttribute: data['FieldAttribute'] as dynamic,
      formFieldDynamicControl: data['FormFieldDynamicControl'] == null
          ? null
          : FormFieldDynamicControlModel.fromMap(
              data['FormFieldDynamicControl'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toMap() => {
        'Url': url,
        'FieldAttribute': fieldAttribute,
        'FormFieldDynamicControl': formFieldDynamicControl?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [FormFieldDynamicModel].
  factory FormFieldDynamicModel.fromJson(String data) {
    return FormFieldDynamicModel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [FormFieldDynamicModel] to a JSON string.
  String toJson() => json.encode(toMap());

  FormFieldDynamicModel copyWith({
    dynamic url,
    dynamic fieldAttribute,
    FormFieldDynamicControlModel? formFieldDynamicControl,
  }) {
    return FormFieldDynamicModel(
      url: url ?? this.url,
      fieldAttribute: fieldAttribute ?? this.fieldAttribute,
      formFieldDynamicControl:
          formFieldDynamicControl ?? this.formFieldDynamicControl,
    );
  }
}

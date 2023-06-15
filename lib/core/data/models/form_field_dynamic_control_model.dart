part of models;

class FormFieldDynamicControlModel {
  final String? captureInput;
  final dynamic variableInput;

  const FormFieldDynamicControlModel({this.captureInput, this.variableInput});

  factory FormFieldDynamicControlModel.fromMap(Map<String, dynamic> data) {
    return FormFieldDynamicControlModel(
      captureInput: data['CaptureInput'] as String?,
      variableInput: data['VariableInput'] as dynamic,
    );
  }

  Map<String, dynamic> toMap() => {
        'CaptureInput': captureInput,
        'VariableInput': variableInput,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [FormFieldDynamicControlModel].
  factory FormFieldDynamicControlModel.fromJson(String data) {
    return FormFieldDynamicControlModel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [FormFieldDynamicControlModel] to a JSON string.
  String toJson() => json.encode(toMap());

  FormFieldDynamicControlModel copyWith({
    String? captureInput,
    dynamic variableInput,
  }) {
    return FormFieldDynamicControlModel(
      captureInput: captureInput ?? this.captureInput,
      variableInput: variableInput ?? this.variableInput,
    );
  }
}

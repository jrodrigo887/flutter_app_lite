part of entities;

class FormFieldDynamicControl extends Equatable {
  final String? captureInput;
  final dynamic variableInput;

  const FormFieldDynamicControl({this.captureInput, this.variableInput});

  factory FormFieldDynamicControl.fromMap(Map<String, dynamic> data) {
    return FormFieldDynamicControl(
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
  /// Parses the string and returns the resulting Json object as [FormFieldDynamicControl].
  factory FormFieldDynamicControl.fromJson(String data) {
    return FormFieldDynamicControl.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [FormFieldDynamicControl] to a JSON string.
  String toJson() => json.encode(toMap());

  FormFieldDynamicControl copyWith({
    String? captureInput,
    dynamic variableInput,
  }) {
    return FormFieldDynamicControl(
      captureInput: captureInput ?? this.captureInput,
      variableInput: variableInput ?? this.variableInput,
    );
  }

  @override
  List<Object?> get props => [captureInput, variableInput];
}

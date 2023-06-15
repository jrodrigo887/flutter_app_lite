part of entities;

class FormFieldDynamic extends Equatable {
  final dynamic url;
  final dynamic fieldAttribute;
  final FormFieldDynamicControl? formFieldDynamicControl;

  const FormFieldDynamic({
    this.url,
    this.fieldAttribute,
    this.formFieldDynamicControl,
  });

  factory FormFieldDynamic.fromMap(Map<String, dynamic> data) {
    return FormFieldDynamic(
      url: data['Url'] as dynamic,
      fieldAttribute: data['FieldAttribute'] as dynamic,
      formFieldDynamicControl: data['FormFieldDynamicControl'] == null
          ? null
          : FormFieldDynamicControl.fromMap(
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
  /// Parses the string and returns the resulting Json object as [FormFieldDynamic].
  factory FormFieldDynamic.fromJson(String data) {
    return FormFieldDynamic.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [FormFieldDynamic] to a JSON string.
  String toJson() => json.encode(toMap());

  FormFieldDynamic copyWith({
    dynamic url,
    dynamic fieldAttribute,
    FormFieldDynamicControl? formFieldDynamicControl,
  }) {
    return FormFieldDynamic(
      url: url ?? this.url,
      fieldAttribute: fieldAttribute ?? this.fieldAttribute,
      formFieldDynamicControl:
          formFieldDynamicControl ?? this.formFieldDynamicControl,
    );
  }

  @override
  List<Object?> get props {
    return [
      url,
      fieldAttribute,
      formFieldDynamicControl,
    ];
  }
}

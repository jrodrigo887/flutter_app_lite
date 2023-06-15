part of models;

class AssistanceQueueModel extends Equatable {
  final String? oid;
  final String? name;
  final List<AttendantModel>? attendants;
  final String? attendantNames;
  final List<DayOfWeekModel>? dayOfWeeks;

  const AssistanceQueueModel({
    this.oid,
    this.name,
    this.attendants,
    this.attendantNames,
    this.dayOfWeeks,
  });

  factory AssistanceQueueModel.fromMap(Map<String, dynamic> data) {
    return AssistanceQueueModel(
      oid: data['Oid'] as String?,
      name: data['Name'] as String?,
      attendants: (data['Attendants'] as List<dynamic>?)
          ?.map((e) => AttendantModel.fromMap(e as Map<String, dynamic>))
          .toList(),
      attendantNames: data['AttendantNames'] as String?,
      dayOfWeeks: (data['DayOfWeeks'] as List<dynamic>?)
          ?.map((e) => DayOfWeekModel.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'Oid': oid,
        'Name': name,
        'Attendants': attendants?.map((e) => e.toMap()).toList(),
        'AttendantNames': attendantNames,
        'DayOfWeeks': dayOfWeeks?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [AssistanceQueueModel].
  factory AssistanceQueueModel.fromJson(String data) {
    return AssistanceQueueModel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [AssistanceQueueModel] to a JSON string.
  String toJson() => json.encode(toMap());

  AssistanceQueueModel copyWith({
    String? oid,
    String? name,
    List<AttendantModel>? attendants,
    String? attendantNames,
    List<DayOfWeekModel>? dayOfWeeks,
  }) {
    return AssistanceQueueModel(
      oid: oid ?? this.oid,
      name: name ?? this.name,
      attendants: attendants ?? this.attendants,
      attendantNames: attendantNames ?? this.attendantNames,
      dayOfWeeks: dayOfWeeks ?? this.dayOfWeeks,
    );
  }

  @override
  List<Object?> get props {
    return [oid, name];
  }
}

part of entities;

class AssistanceQueue extends Equatable {
  final String? oid;
  final String? name;
  final List<Attendant>? attendants;
  final String? attendantNames;
  final List<DayOfWeek>? dayOfWeeks;

  const AssistanceQueue({
    this.oid,
    this.name,
    this.attendants,
    this.attendantNames,
    this.dayOfWeeks,
  });

  factory AssistanceQueue.fromMap(Map<String, dynamic> data) {
    return AssistanceQueue(
      oid: data['Oid'] as String?,
      name: data['Name'] as String?,
      attendants: (data['Attendants'] as List<dynamic>?)
          ?.map((e) => Attendant.fromMap(e as Map<String, dynamic>))
          .toList(),
      attendantNames: data['AttendantNames'] as String?,
      dayOfWeeks: (data['DayOfWeeks'] as List<dynamic>?)
          ?.map((e) => DayOfWeek.fromMap(e as Map<String, dynamic>))
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
  /// Parses the string and returns the resulting Json object as [AssistanceQueue].
  factory AssistanceQueue.fromJson(String data) {
    return AssistanceQueue.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [AssistanceQueue] to a JSON string.
  String toJson() => json.encode(toMap());

  AssistanceQueue copyWith({
    String? oid,
    String? name,
    List<Attendant>? attendants,
    String? attendantNames,
    List<DayOfWeek>? dayOfWeeks,
  }) {
    return AssistanceQueue(
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

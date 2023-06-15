part of entities;

class DayOfWeek extends Equatable {
  final String? dayOfWeek;
  final String? workTimeStart;
  final String? workTimeEnd;
  final int? queueSize;

  const DayOfWeek({
    this.dayOfWeek,
    this.workTimeStart,
    this.workTimeEnd,
    this.queueSize,
  });

  factory DayOfWeek.fromMap(Map<String, dynamic> data) => DayOfWeek(
        dayOfWeek: data['DayOfWeek'] as String?,
        workTimeStart: data['WorkTimeStart'] as String?,
        workTimeEnd: data['WorkTimeEnd'] as String?,
        queueSize: data['QueueSize'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'DayOfWeek': dayOfWeek,
        'WorkTimeStart': workTimeStart,
        'WorkTimeEnd': workTimeEnd,
        'QueueSize': queueSize,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DayOfWeek].
  factory DayOfWeek.fromJson(String data) {
    return DayOfWeek.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DayOfWeek] to a JSON string.
  String toJson() => json.encode(toMap());

  DayOfWeek copyWith({
    String? dayOfWeek,
    String? workTimeStart,
    String? workTimeEnd,
    int? queueSize,
  }) {
    return DayOfWeek(
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
      workTimeStart: workTimeStart ?? this.workTimeStart,
      workTimeEnd: workTimeEnd ?? this.workTimeEnd,
      queueSize: queueSize ?? this.queueSize,
    );
  }

  @override
  List<Object?> get props {
    return [
      dayOfWeek,
      workTimeStart,
      workTimeEnd,
      queueSize,
    ];
  }
}

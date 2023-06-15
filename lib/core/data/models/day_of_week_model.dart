part of models;

class DayOfWeekModel {
  final String? DayOfWeek;
  final String? workTimeStart;
  final String? workTimeEnd;
  final int? queueSize;

  const DayOfWeekModel({
    this.DayOfWeek,
    this.workTimeStart,
    this.workTimeEnd,
    this.queueSize,
  });

  factory DayOfWeekModel.fromMap(Map<String, dynamic> data) => DayOfWeekModel(
        DayOfWeek: data['DayOfWeek'] as String?,
        workTimeStart: data['WorkTimeStart'] as String?,
        workTimeEnd: data['WorkTimeEnd'] as String?,
        queueSize: data['QueueSize'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'DayOfWeek': DayOfWeekModel,
        'WorkTimeStart': workTimeStart,
        'WorkTimeEnd': workTimeEnd,
        'QueueSize': queueSize,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DayOfWeekModel].
  factory DayOfWeekModel.fromJson(String data) {
    return DayOfWeekModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DayOfWeekModel] to a JSON string.
  String toJson() => json.encode(toMap());

  DayOfWeekModel copyWith({
    String? DayOfWeek,
    String? workTimeStart,
    String? workTimeEnd,
    int? queueSize,
  }) {
    return DayOfWeekModel(
      DayOfWeek: DayOfWeek ?? this.DayOfWeek,
      workTimeStart: workTimeStart ?? this.workTimeStart,
      workTimeEnd: workTimeEnd ?? this.workTimeEnd,
      queueSize: queueSize ?? this.queueSize,
    );
  }
}

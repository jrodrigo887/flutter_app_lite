part of mappers;

class DayOfWeekMapper {
  static DayOfWeek fromDto(DayOfWeekDto dayofDto) {
    return DayOfWeek(
        dayOfWeek: dayofDto.dayOfWeek,
        workTimeStart: dayofDto.workTimeStart,
        workTimeEnd: dayofDto.workTimeEnd,
        queueSize: dayofDto.queueSize);
  }

  static DayOfWeekDto toDto(DayOfWeek dayof) {
    return DayOfWeekDto(
        dayOfWeek: dayof.dayOfWeek,
        workTimeStart: dayof.workTimeStart,
        workTimeEnd: dayof.workTimeEnd,
        queueSize: dayof.queueSize);
  }
}

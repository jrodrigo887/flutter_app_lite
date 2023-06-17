import 'package:desafio_pessoal/core/domain/entities/attendant_dto.dart';
import 'package:desafio_pessoal/core/domain/entities/entities.dart';

class AttendantMapper {
  static Attendant fromDto(AttendantDto attDto) {
    return Attendant(
        oid: attDto.oid,
        name: attDto.name,
        userId: attDto.userId,
        cpf: attDto.cpf,
        profileImage: attDto.profileImage,
        company: attDto.company);
  }

  static AttendantDto toDto(AttendantDto attDto) {
    return AttendantDto(
        oid: attDto.oid,
        name: attDto.name,
        userId: attDto.userId,
        cpf: attDto.cpf,
        profileImage: attDto.profileImage,
        company: attDto.company);
  }
}

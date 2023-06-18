part of entities;

class Attendant extends Equatable {
  final String oid;
  final String name;
  final String userId;
  final String cpf;
  final String profileImage;
  final String company;

  const Attendant({
    required this.oid,
    required this.name,
    required this.userId,
    required this.cpf,
    required this.profileImage,
    required this.company,
  });
  @override
  List<Object?> get props {
    return [oid];
  }
}

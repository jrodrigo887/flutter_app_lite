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

  factory Attendant.fromMap(Map<String, dynamic> data) => Attendant(
        oid: data['Oid'] as String,
        name: data['Name'] as String,
        userId: data['UserId'] as String,
        cpf: data['Cpf'] as String,
        profileImage: data['ProfileImage'] as String,
        company: data['Company'] as String,
      );

  Map<String, dynamic> toMap() => {
        'Oid': oid,
        'Name': name,
        'UserId': userId,
        'Cpf': cpf,
        'ProfileImage': profileImage,
        'Company': company,
      };

  @override
  List<Object?> get props {
    return [oid];
  }
}

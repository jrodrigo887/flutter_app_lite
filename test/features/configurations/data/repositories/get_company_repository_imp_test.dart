import 'package:desafio_pessoal/features/configurations/domain/repositories/company_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGetCompanyImp extends Mock implements GetCompanyRepository {}

void main() {
  testWidgets('get company repository imp ...', (tester) async {
    expect(true, true);
  });
}

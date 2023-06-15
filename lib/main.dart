import 'package:desafio_pessoal/ambients.dart';
import 'package:desafio_pessoal/app_main.dart';
import 'package:desafio_pessoal/core/core.dart';
import 'package:desafio_pessoal/core/gateways/firebase_gateway.dart';
import 'package:desafio_pessoal/features/configurations/data/data.dart';
import 'package:desafio_pessoal/features/configurations/domain/usecases/get_configurations.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var firebase =
      FirebaseGateway(AmbientConfigurationsFactory('dev').getProperties());
  await firebase.initialize();
  final client = HttpClient();
  final reposGet = GetCompanyRepositoryImp(client);
  final getConfig = GetConfigurations(reposGet);
  final teste = await getConfig
      .execute(const CompanyId('94612025-d6f5-4951-91f0-118016d92944'));

  String title = 'Company';
  teste.fold((l) {}, (r) {
    title = r.name;
  });

  runApp(MyApp(
    companyName: title,
  ));
}

class MyApp extends StatelessWidget {
  final String companyName;
  const MyApp({super.key, required this.companyName});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AppMain(title: companyName),
    );
  }
}

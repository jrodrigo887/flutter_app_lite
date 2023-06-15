# Reescrever o Lite para o Flutter

O objetivo desse projeto é apenas reescrever alguns recursos básico do App Lite do Onboarding Digital para teste pessoal e avaliação do App no flutter.

#### Desafio
> Toda a implementação será feita com foco no Clean Archtecture com testes unitários e de integrações. Ainda analisando pacotes para gerencimento de estado (Bloc, GetX, RxNotifier, Modular entre outros)

**Features**
- [ ] Implementar a autenticação e validação do firebase (verificar módulo de teste).
- [ ] Implementar o carregamento das informações da empresa.
- [ ] Implementar o carregamento das configurações do atendimento Video ID.
- [ ] Implementar o carregamento das configurações do atendimento Auto ID.
- [ ] Implementar gerenciamento de estado.


#### Estrutura básica
```shell
   ├───core
   │   ├───errors
   │   ├───gateways
   │   └───http
   └───features
       └───configurations
           ├───application
           ├───data
           │   ├───dtos
           │   └───repositories
           └───domain
               ├───entities
               ├───repositories
               └───usecases

```

**extras**
- Para gerar o desenho da estrutura de pastas rode o comando `tree` no powershell


**Packages**

1 http
2 dartz
3 flutter_modular
4 firebase_auth
5 equatable
6 flutter_modular
7 Bloc ou Provider

sdk: '>=3.0.0 <4.0.0'

***

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.




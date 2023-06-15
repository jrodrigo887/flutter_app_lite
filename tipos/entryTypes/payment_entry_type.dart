// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'entry_type.dart';

class PaymentEntryType extends EntryType {
  late PaymentConfig paymentConfig;
  late Payment payment;
  late Receipt? receipt;
  PaymentEntryType({
    required this.paymentConfig,
    required this.payment,
    this.receipt,
    required super.captureEntryType,
    required super.name,
    required super.oid,
    required super.caption,
    required super.mandatory,
  });
}

abstract class PayCompany {
  late String name;
  late String profileImage;
}

abstract class PaymentConfig {
  late PayCompany paymentCompany;
  late List<OnCredit> payments;
}

abstract class OnCredit {
  late String name;
  late String paymentType = 'OnCredit';
  late List<PaymentConfiguration> paymentCreditConfig;
}

enum PaymentConfigurationTypeEnum { cashCredit, installmentPayment }

// Tipos de pagamento
abstract class PaymentConfiguration {
  late bool ApplyInterest;
  late int Interest;
  late PaymentConfigurationTypeEnum PaymentConfigurationType;
  late int Installment;
}
// ============

abstract class Payment {
  late List<Service> services;
  late OnCredit selectedPayment;
}

abstract class Service {
  late String descricao;
  late String valor;
}

abstract class Receipt {
  late String hour;
  late String pin;
  late List<Service> services;
  late String total;
  late String paymentMethod;
  late String creditCard;
}

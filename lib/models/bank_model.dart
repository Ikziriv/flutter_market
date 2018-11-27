import 'package:flutter/material.dart';
import '../widget/linear_gradient.dart';

class Bank {
  final String id;
  final String name;
  final String loanAmount;
  final String emi;
  final String intrestRate;
  final String processingFee;
  final String tenure;
  final LinearGradient gradientColor;

  Bank(
      {this.id,
      this.name,
      this.loanAmount,
      this.emi,
      this.intrestRate,
      this.processingFee,
      this.tenure,
      this.gradientColor});
}

List<Bank> dummyDataBank = [
  new Bank(
      id: "1",
      name: "Kotal Mahindra Bank",
      loanAmount: "₹ 250000",
      emi: "₹11732",
      intrestRate: "11.69 % ",
      processingFee: "1.30 %",
      tenure: "2 years",
      gradientColor: LinearStyles.gradientBankCard(
          Color.fromRGBO(160, 71, 45, 1.0),
          Color.fromRGBO(221, 132, 58, 0.90))),
  new Bank(
      id: "2",
      name: "Tata Capital",
      loanAmount: "₹ 250000",
      emi: "₹10552",
      intrestRate: "11.70 % ",
      processingFee: "1.34 %",
      tenure: "2 years",
      gradientColor: LinearStyles.gradientBankCard(
          Color.fromRGBO(62, 130, 160, 1.0),
          Color.fromRGBO(70, 174, 232, 0.80))),
  new Bank(
      id: "2",
      name: "RBL Bank",
      loanAmount: "₹ 250000",
      emi: "₹11037",
      intrestRate: "11.63 % ",
      processingFee: "1.22 %",
      tenure: "2 years",
      gradientColor: LinearStyles.gradientBankCard(
          Color.fromRGBO(230, 79, 149, 1.0),
          Color.fromRGBO(229, 79, 140, 0.80))),
];

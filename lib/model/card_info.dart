import '../constants/constanst.dart';

class CardInfo {
  String cardNumber;
  String name;
  String validate;
  String cvv;
  CardCompany company;

  CardInfo({
    this.cardNumber,
    this.name,
    this.validate,
    this.cvv,
    this.company,
  });

  @override
  String toString() {
    return "company=$company, cardNumber=$cardNumber, name=$name, validate=$validate, cvv=$cvv";
  }
}

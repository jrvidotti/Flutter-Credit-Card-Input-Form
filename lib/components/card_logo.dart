import 'package:credit_card_input_form/util/detect_card_company.dart';
import 'package:flutter/material.dart';
import 'package:credit_card_input_form/constants/constanst.dart';
import 'package:credit_card_input_form/provider/card_number_provider.dart';
import 'package:provider/provider.dart';

import '../constants/constanst.dart';

class CardLogo extends StatelessWidget {
  final master = Image.asset('images/mastercard.png',
      width: 50, package: 'credit_card_input_form');
  final visa = Image.asset('images/visacard.png',
      width: 50, package: 'credit_card_input_form');
  final discover = Image.asset('images/discover.png',
      width: 50, package: 'credit_card_input_form');

  final amex = Image.asset('images/amex.png',
      width: 50, package: 'credit_card_input_form');

  final others = Container();

  @override
  Widget build(BuildContext context) {
    String cardNumber = Provider.of<CardNumberProvider>(context).cardNumber;

    CardCompany cardCompany = detectCardCompany(cardNumber, CARD_NUM_PATTERNS);

    return Stack(
      children: <Widget>[
        AnimatedOpacity(
          opacity: cardCompany == CardCompany.VISA ? 1 : 0,
          child: visa,
          duration: Duration(milliseconds: 200),
        ),
        AnimatedOpacity(
            opacity: cardCompany == CardCompany.MASTER ? 1 : 0,
            child: master,
            duration: Duration(milliseconds: 200)),
        AnimatedOpacity(
            opacity: cardCompany == CardCompany.DISCOVER ? 1 : 0,
            child: discover,
            duration: Duration(milliseconds: 200)),
        AnimatedOpacity(
            opacity: cardCompany == CardCompany.AMERICAN_EXPRESS ? 1 : 0,
            child: amex,
            duration: Duration(milliseconds: 200)),
      ],
    );
  }
}

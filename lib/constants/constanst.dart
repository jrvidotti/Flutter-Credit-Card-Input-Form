import 'package:flutter/material.dart';

final kCardNumberTextStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'U and I',
  fontWeight: FontWeight.bold,
  package: 'credit_card_input_form',
  letterSpacing: 1.5,
  fontSize: 25,
);

final kCardDefaultTextStyle = TextStyle(
  color: Colors.grey,
  fontFamily: 'U and I',
  package: 'credit_card_input_form',
  fontSize: 25,
  letterSpacing: 1,
);

final kCVCTextStyle = TextStyle(
  color: Colors.black,
  fontFamily: 'Satisfy',
  fontWeight: FontWeight.bold,
  package: 'credit_card_input_form',
  fontSize: 20,
);

final kTextStyle = TextStyle(
  fontSize: 8,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  fontFamily: 'U and I',
  package: 'credit_card_input_form',
);

const kNametextStyle = TextStyle(
  fontSize: 15,
  color: Colors.white,
  fontFamily: 'U and I',
  package: 'credit_card_input_form',
);

const kDefaultNameTextStyle = TextStyle(
  fontSize: 15,
  color: Colors.grey,
  fontFamily: 'U and I',
  package: 'credit_card_input_form',
);

const kValidtextStyle = TextStyle(
  fontSize: 15,
  letterSpacing: 2,
  color: Colors.white,
  package: 'credit_card_input_form',
  fontFamily: 'U and I',
);

const kDefaultValidTextStyle = TextStyle(
  fontSize: 15,
  color: Colors.grey,
  fontFamily: 'U and I',
  package: 'credit_card_input_form',
);

const kSignTextStyle = TextStyle(
  fontSize: 20,
  color: Colors.white,
  fontFamily: 'Satisfy',
  package: 'credit_card_input_form',
);

enum InputState { NUMBER, NAME, VALIDATE, CVV, DONE }

enum CardCompany { VISA, MASTER, AMERICAN_EXPRESS, DISCOVER, OTHER }

const Map<CardCompany, Set<List<String>>> CARD_NUM_PATTERNS =
    <CardCompany, Set<List<String>>>{
  CardCompany.VISA: <List<String>>{
    <String>['4'],
  },
  CardCompany.AMERICAN_EXPRESS: <List<String>>{
    <String>['34'],
    <String>['37'],
  },
  CardCompany.DISCOVER: <List<String>>{
    <String>['6011'],
    <String>['622126', '622925'],
    <String>['644', '649'],
    <String>['65']
  },
  CardCompany.MASTER: <List<String>>{
    <String>['51', '55'],
    <String>['2221', '2229'],
    <String>['223', '229'],
    <String>['23', '26'],
    <String>['270', '271'],
    <String>['2720'],
  },
};

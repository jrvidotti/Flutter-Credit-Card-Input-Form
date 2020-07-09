import '../constants/constanst.dart';

CardCompany detectCardCompany(
  String cardNumber,
  Map<CardCompany, Set<List<String>>> cardNumPatterns,
) {
  //Default card type is other
  CardCompany cardType = CardCompany.OTHER;

  if (cardNumber.isEmpty) {
    return cardType;
  }

  cardNumPatterns.forEach(
    (CardCompany type, Set<List<String>> patterns) {
      for (List<String> patternRange in patterns) {
        String ccPatternStr = cardNumber.replaceAll(RegExp(r'\s+\b|\b\s'), '');
        final int rangeLen = patternRange[0].length;
        if (rangeLen < cardNumber.length) {
          ccPatternStr = ccPatternStr.substring(0, rangeLen);
        }

        if (patternRange.length > 1) {
          final int ccPrefixAsInt = int.parse(ccPatternStr);
          final int startPatternPrefixAsInt = int.parse(patternRange[0]);
          final int endPatternPrefixAsInt = int.parse(patternRange[1]);
          if (ccPrefixAsInt >= startPatternPrefixAsInt &&
              ccPrefixAsInt <= endPatternPrefixAsInt) {
            cardType = type;
            break;
          }
        } else {
          if (ccPatternStr == patternRange[0]) {
            cardType = type;
            break;
          }
        }
      }
    },
  );

  return cardType;
}

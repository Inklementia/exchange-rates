class MyCurrencyHelper {
  //
  static String getFlagFromCurrencyCode(String currencyCode) {
    int flagOffset = 0x1F1E6;
    int asciiOffset = 0x41;

    String firstLetter = currencyCode.substring(0, 1).toUpperCase();
    String secondLetter = currencyCode.substring(1, 2).toUpperCase();

    int firstLetterIndex = firstLetter.codeUnitAt(0) - asciiOffset + flagOffset;
    int secondLetterIndex =
        secondLetter.codeUnitAt(0) - asciiOffset + flagOffset;

    String flag = String.fromCharCode(firstLetterIndex) +
        String.fromCharCode(secondLetterIndex);

    return flag;
  }
}

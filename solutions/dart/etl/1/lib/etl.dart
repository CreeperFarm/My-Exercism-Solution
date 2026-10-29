class Etl {
  Map<String, int> transform(Map<String, List<String>> legacyData) {
    final Map<String, int> newData = {};

    for (var entry in legacyData.entries) {
      final int score = int.parse(entry.key);
      final List<String> letters = entry.value;

      for (var letter in letters) {
        newData[letter.toLowerCase()] = score;
      }
    }

    return newData;
  }
}


class WordCount {
  Map<String, int> countWords(String subtitles) {
    final Map<String, int> wordCounts = {};

    final text = subtitles.toLowerCase();
    final regex = RegExp(r"[a-z0-9]+(?:'[a-z0-9]+)*");
    final matches = regex.allMatches(text);

    for (final match in matches) {
      final word = match.group(0)!;
      wordCounts[word] = (wordCounts[word] ?? 0) + 1;
    }
    return wordCounts;
  }
}

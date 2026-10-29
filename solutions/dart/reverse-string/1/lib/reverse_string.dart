String reverse(String entry) {
  String result = "";
  List<String> entryLi = entry.split('');
  for (final elem in entryLi) {
    result = elem + result;
  }
  return result;
}

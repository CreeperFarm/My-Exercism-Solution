class PascalsTriangle {
  List<List<int>> rows(int rowNum) {
    if (rowNum <= 0) return [];

    List<List<int>> result = [];

    for (int i = 0; i < rowNum; i++) {
      List<int> row = List.filled(i + 1, 1);

      for (int j = 1; j < i; j++) {
        row[j] = result[i - 1][j - 1] + result[i - 1][j];
      }

      result.add(row);
    }

    return result;
  }
}

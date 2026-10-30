class AtbashCipher {
  String encode(String plainText) {
    final invertedChars = _substituteAndFilter(plainText);
    
    final chunks = <String>[];
    for (var i = 0; i < invertedChars.length; i += 5) {
      final end = (i + 5 < invertedChars.length) ? i + 5 : invertedChars.length;
      chunks.add(invertedChars.substring(i, end));
    }
    
    return chunks.join(' ');
  }

  String decode(String cipherText) {
    return _substituteAndFilter(cipherText);
  }

  String _substituteAndFilter(String text) {
    final buffer = StringBuffer();
    
    for (final char in text.toLowerCase().codeUnits) {
      if (char >= 97 && char <= 122) {
        buffer.writeCharCode(122 - (char - 97));
      }
      else if (char >= 48 && char <= 57) {
        buffer.writeCharCode(char);
      }
    }
    
    return buffer.toString();
  }
}

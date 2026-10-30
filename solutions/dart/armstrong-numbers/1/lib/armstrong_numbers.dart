
class ArmstrongNumbers {
  bool isArmstrongNumber(String num) {
    final digits = num.split('');
    final power = digits.length;
    BigInt sum = BigInt.zero;

    for (final digit in digits) {
      final value = BigInt.parse(digit);
      BigInt result = BigInt.one;

      for (int i = 0; i < power; i++) {
        result *= value;
      }

      sum += result;
    }

    return sum == BigInt.parse(num);
  }
}

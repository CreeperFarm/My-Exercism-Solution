
class ArmstrongNumbers {
  BigInt sum(int power, List<String> digits) {
    BigInt sumVal = BigInt.zero;
    for (final digit in digits) {
      final value = BigInt.parse(digit);
      sumVal += value.pow(power);
    }
    return sumVal;
  }
  
  bool isArmstrongNumber(String num) {
    final digits = num.split('');
    return sum(digits.length, digits) == BigInt.parse(num);
  }
}

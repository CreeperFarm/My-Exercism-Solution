class ArmstrongNumbers {

    boolean isArmstrongNumber(int numberToCheck) {
        String digits = String.valueOf(numberToCheck);
        int power = digits.length();
        long sum = 0;

        for (char c : digits.toCharArray()) {
            int digit = c - '0';
            sum += pow(digit, power);
        }

        return sum == numberToCheck;
    }

    private long pow(int base, int exponent) {
        long result = 1;
        for (int i = 0; i < exponent; i++) {
            result *= base;
        }
        return result;
    }
}

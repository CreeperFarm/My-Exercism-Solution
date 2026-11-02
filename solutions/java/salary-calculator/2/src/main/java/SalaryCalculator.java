public class SalaryCalculator {
    private static final double SALARY_DEDUCTION_PERCENTAGE = 0.15;
    private static final double BASE_SALARY = 1000.00;
    private static final double CAP_SALARY = 2000.00;
    private static final int SKIP_DAYS_DEDUCTION = 5;
    private static final int BONUS_MULTIPLIER_OVER = 20;
    private static final int BONUS_MULTIPLIER_LESS_PRODUCT = 10;
    private static final int BONUS_MULTIPLIER_MORE_PRODUCT = 13;
    
    
    public double salaryMultiplier(int daysSkipped) {
        return 1 - ((daysSkipped >= SKIP_DAYS_DEDUCTION) ? SALARY_DEDUCTION_PERCENTAGE : 0);
    }

    public int bonusMultiplier(int productsSold) {
        return (productsSold >= BONUS_MULTIPLIER_OVER) ? BONUS_MULTIPLIER_MORE_PRODUCT : BONUS_MULTIPLIER_LESS_PRODUCT;
    }

    public double bonusForProductsSold(int productsSold) {
        return bonusMultiplier(productsSold) * productsSold;
    }

    public double finalSalary(int daysSkipped, int productsSold) {
        double res = BASE_SALARY * salaryMultiplier(daysSkipped) + bonusForProductsSold(productsSold);
        return (CAP_SALARY >= res) ? res : CAP_SALARY;
    } 
}

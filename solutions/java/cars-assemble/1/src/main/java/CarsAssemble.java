
public class CarsAssemble {
    final private static int PRODUCTION_CAR_PER_HOUR = 221;

    public double productionRatePerHour(int speed) {
        double successRate;

        if (speed >= 1 && speed <= 4) {
            successRate = 1.0;
        } else if (speed >= 5 && speed <= 8) {
            successRate = 0.9;
        } else if (speed == 9) {
            successRate = 0.8;
        } else if (speed == 10) {
            successRate = 0.77;
        } else {
            successRate = 0.0;
        }

        return PRODUCTION_CAR_PER_HOUR * speed * successRate;
    }

    public int workingItemsPerMinute(int speed) {
        double hourlyProduction = productionRatePerHour(speed);
        return (int) (hourlyProduction / 60);
    }
}

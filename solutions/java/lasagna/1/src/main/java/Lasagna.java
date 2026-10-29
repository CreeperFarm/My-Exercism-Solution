public class Lasagna {
    public int expectedMinutesInOven() {
        return 40;
    }

    public int remainingMinutesInOven(int value) {
        return 40-value;
    }

    public int preparationTimeInMinutes(int couche) {
        return 2*couche;
    }

    public int totalTimeInMinutes(int couche, int num) {
        return preparationTimeInMinutes(couche)+num;
    }
}

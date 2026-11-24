class Darts {
    int score(double xOfDart, double yOfDart) {
        double distanceSquared = xOfDart * xOfDart + yOfDart * yOfDart;

        if (distanceSquared <= 1) {
            return 10;
        }
        if (distanceSquared <= 25) {
            return 5;
        }
        if (distanceSquared <= 100) {
            return 1;
        }
        return 0;
    }
}

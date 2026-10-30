class EggCounter {
  int count(int number) {
    int compteur = 0;
    int n = number;

    while (n > 0) {
      if ((n & 1) == 1) {
        compteur++;
      }
      n = n >> 1; 
    }

    return compteur;
  }
}
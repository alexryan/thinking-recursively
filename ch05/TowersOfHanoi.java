class TowersOfHanoi {
  public static void main(String[] args) {
    moveTower(3, "A", "B", "C");
  }

  public static void moveTower(int n, String start, String finish, String temp) {
    if (n == 1) {
      System.out.println(start + " -> " + finish);
    } else {
      moveTower(n-1, start, temp, finish);
      System.out.println(start + " -> " + finish);
      moveTower(n-1, temp, finish, start);
    }
  }
}


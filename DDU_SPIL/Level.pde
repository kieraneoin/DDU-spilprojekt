class levels {

  boolean BLT1 = false;

  void level1() {

    for (int i = 0; i < 20; i++) {
      fjende f =new fjende(random(1000, 1200), random(10, height-10), -1, 0);
      fjendeList.add(f);
    }
  }

  void level2() {

    fjendeList.clear();
    kugleList.clear();
    for (int i = 0; i < 25; i++) {
      fjende f =new fjende(random(1000, 1200), random(10, height-10), -1.2, 0);
      fjendeList.add(f);
      s.RykPaaPlads();
      s.running = true;
    }
  }
}

class Ticker {
  Stream<int> tick({int ticks}) => Stream.periodic(Duration(seconds: 1), (x) {
        return ticks - x - 1;
      }).take(ticks);
}

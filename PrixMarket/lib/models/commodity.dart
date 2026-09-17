class Commodity {
  final String name;
  final double price;
  final String unit;
  final double trend; // % change, positive = up, negative = down

  Commodity({
    required this.name,
    required this.price,
    required this.unit,
    required this.trend,
  });
}

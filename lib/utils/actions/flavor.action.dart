enum Flavor {
  develop,
  staging,
  product,
}

class FlavorAction {
  static Flavor? flavor;

  /// default flavor name
  static String get name => flavor?.name ?? '';

  /// custom flavor title
  static String get title {
    switch (flavor) {
      case Flavor.develop:
        return 'Mobile Layanan Kependudukan Develop';
      case Flavor.staging:
        return 'Mobile Layanan Kependudukan Staging';
      case Flavor.product:
        return 'Mobile Layanan Kependudukan Pkit';
      default:
        return 'Mobile Layanan Kependudukan Develop';
    }
  }
}

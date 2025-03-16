enum Flavor { development, production }

class Config {
  static Flavor appFlavor = Flavor.production; // Default flavor

  static String get appName {
    switch (appFlavor) {
      case Flavor.development:
        return "DocDoc Development";
      case Flavor.production:
      default:
        return "DocDoc Production";
    }
  }

  static String get apiBaseUrl {
    switch (appFlavor) {
      case Flavor.development:
        return "https://vcare.integration25.com/api/"; // Change if needed
      case Flavor.production:
      default:
        return "https://vcare.integration25.com/api/"; // Change if needed
    }
  }
}

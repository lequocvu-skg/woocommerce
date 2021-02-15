

extension MapEx on Map {
  Map cleanup() {
    this.removeWhere((key, value) => key == null || value == null);
    return this;
  }
}
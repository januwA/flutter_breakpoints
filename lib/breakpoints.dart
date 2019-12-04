class Breakpoints {
  Breakpoints(this.value);
  final double value;
  static final double xs = 0;
  static final double sm = 600;
  static final double md = 960;
  static final double lg = 1280;
  static final double xl = 1920;

  /// 0-599
  static bool isXs(double value) {
    return value >= xs && value < sm;
  }

  /// 600-959
  static bool isSm(double value) {
    return value >= sm && value < md;
  }

  /// 960-1279
  static bool isMd(double value) {
    return value >= md && value < lg;
  }

  /// 1280-1919
  static bool isLg(double value) {
    return value >= lg && value < xl;
  }

  /// \>= 1920
  static bool isXl(double value) {
    return value >= xl;
  }

  /// only
  static bool only(double value, List<double> preakpoints) {
    for (double p in preakpoints) {
      if (p == Breakpoints.xs && Breakpoints.isXs(value)) return true;
      if (p == Breakpoints.sm && Breakpoints.isSm(value)) return true;
      if (p == Breakpoints.md && Breakpoints.isMd(value)) return true;
      if (p == Breakpoints.lg && Breakpoints.isLg(value)) return true;
      if (p == Breakpoints.xl && Breakpoints.isXl(value)) return true;
    }
    return false;
  }

  @override
  String toString() {
    if (Breakpoints.isXs(value)) return 'xs';
    if (Breakpoints.isSm(value)) return 'sm';
    if (Breakpoints.isMd(value)) return 'md';
    if (Breakpoints.isLg(value)) return 'lg';
    if (Breakpoints.isXl(value)) return 'xl';
    return '';
  }
}

extension NumExtensions<T extends double> on T {
  bool get isXs => Breakpoints.isXs(this);
  bool get isSm => Breakpoints.isSm(this);
  bool get isMd => Breakpoints.isMd(this);
  bool get isLg => Breakpoints.isLg(this);
  bool get isXl => Breakpoints.isXl(this);
  bool only(List<double> preakpoints) => Breakpoints.only(this, preakpoints);
}

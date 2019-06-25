enum BreakpointsKeys {
  xs,
  sm,
  md,
  lg,
  xl,
}

class Breakpoints {
  Breakpoints(this.value);
  final double value;
  static final int xs = 0;
  static final int sm = 600;
  static final int md = 960;
  static final int lg = 1280;
  static final int xl = 1920;

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
  static bool only(double value, List<BreakpointsKeys> preakpoints) {
    for (BreakpointsKeys p in preakpoints) {
      if (p == BreakpointsKeys.xs && Breakpoints.isXs(value)) return true;
      if (p == BreakpointsKeys.sm && Breakpoints.isSm(value)) return true;
      if (p == BreakpointsKeys.md && Breakpoints.isMd(value)) return true;
      if (p == BreakpointsKeys.lg && Breakpoints.isLg(value)) return true;
      if (p == BreakpointsKeys.xl && Breakpoints.isXl(value)) return true;
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

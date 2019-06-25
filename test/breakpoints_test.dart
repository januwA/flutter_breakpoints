import 'package:test/test.dart';
import 'package:breakpoints/breakpoints.dart';

void main() {
  group('测试函数正确性', () {
    test('isXs', () {
      expect(Breakpoints.isXs(400), true);
    });

    test('isMd', () {
      expect(Breakpoints.isMd(1000), true);
    });

    test('only', () {
      expect(Breakpoints.only(1500, [BreakpointsKeys.xs, BreakpointsKeys.lg]),
          true);
      expect(Breakpoints.only(700, [BreakpointsKeys.xs, BreakpointsKeys.lg]),
          false);
    });
  });
}

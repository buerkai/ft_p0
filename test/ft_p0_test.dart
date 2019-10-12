import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ft_p0/ft_p0.dart';

void main() {
  const MethodChannel channel = MethodChannel('ft_p0');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FtP0.platformVersion, '42');
  });
}

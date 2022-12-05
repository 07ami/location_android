import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:location_android/location_android_method_channel.dart';

void main() {
  MethodChannelLocationAndroid platform = MethodChannelLocationAndroid();
  const MethodChannel channel = MethodChannel('location_android');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

}

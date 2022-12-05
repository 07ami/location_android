import 'package:flutter/src/services/platform_channel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:location_android/location_android.dart';
import 'package:location_android/location_android_platform_interface.dart';
import 'package:location_android/location_android_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLocationAndroidPlatform
    with MockPlatformInterfaceMixin
    implements LocationAndroidPlatform {

  @override
  late BasicMessageChannel channelBasicMessage;

  @override
  late MethodChannel channelMethod;

  @override
  Future<void> cancelLocationListener() {
    // TODO: implement cancelLocationListener
    throw UnimplementedError();
  }

  @override
  Future<bool> checkGPS() {
    // TODO: implement checkGPS
    throw UnimplementedError();
  }

  @override
  Future<bool> checkLocationPermission() {
    // TODO: implement checkLocationPermission
    throw UnimplementedError();
  }

  @override
  Future<LocationInfo?> getLastKnownLocation() {
    // TODO: implement getLastKnownLocation
    throw UnimplementedError();
  }

  @override
  Future<LocationInfo?> getLocation({int timeout = 5, bool useLastKnownLocation = false}) {
    // TODO: implement getLocation
    throw UnimplementedError();
  }

  @override
  Future<void> getLocationListener(Function(LocationInfo p1) callback, {int? locationUpdateTime, int? locationUpdateDistance}) {
    // TODO: implement getLocationListener
    throw UnimplementedError();
  }

  @override
  // TODO: implement methodBasicMessage
  String get methodBasicMessage => throw UnimplementedError();

  @override
  // TODO: implement methodCancelLocationUpdatesListener
  String get methodCancelLocationUpdatesListener => throw UnimplementedError();

  @override
  // TODO: implement methodChannel
  String get methodChannel => throw UnimplementedError();

  @override
  // TODO: implement methodCheckGPS
  String get methodCheckGPS => throw UnimplementedError();

  @override
  // TODO: implement methodCheckLocationPermission
  String get methodCheckLocationPermission => throw UnimplementedError();

  @override
  // TODO: implement methodGetLastKnownLocation
  String get methodGetLastKnownLocation => throw UnimplementedError();

  @override
  // TODO: implement methodRequestLocationPermission
  String get methodRequestLocationPermission => throw UnimplementedError();

  @override
  // TODO: implement methodRequestLocationUpdatesListener
  String get methodRequestLocationUpdatesListener => throw UnimplementedError();

  @override
  // TODO: implement methodToSettingsTurnOnGPS
  String get methodToSettingsTurnOnGPS => throw UnimplementedError();

  @override
  Future<void> requestLocationPermission() {
    // TODO: implement requestLocationPermission
    throw UnimplementedError();
  }

  @override
  Future<void> toSettingsTurnOnGPS() {
    // TODO: implement toSettingsTurnOnGPS
    throw UnimplementedError();
  }
}

void main() {
  final LocationAndroidPlatform initialPlatform = LocationAndroidPlatform.instance;

  test('$MethodChannelLocationAndroid is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLocationAndroid>());
  });

}

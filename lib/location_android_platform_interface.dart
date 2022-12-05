import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'location_android_method_channel.dart';
import 'package:flutter/services.dart';

abstract class LocationAndroidPlatform extends PlatformInterface {
  LocationAndroidPlatform() : super(token: _token);
  static final Object _token = Object();
  final methodChannel = "methodChannel";
  final methodBasicMessage = "methodBasicMessage";
  final methodGetLastKnownLocation = "methodGetLastKnownLocation";
  final methodRequestLocationUpdatesListener =
      "methodRequestLocationUpdatesListener";
  final methodCancelLocationUpdatesListener =
      "methodCancelLocationUpdatesListener";
  final methodCheckLocationPermission = "methodCheckLocationPermission";
  final methodRequestLocationPermission = "methodRequestLocationPermission";
  final methodCheckGPS = "methodCheckGPS";
  final methodToSettingsTurnOnGPS = "methodToSettingsTurnOnGPS";
  late MethodChannel channelMethod;
  late BasicMessageChannel channelBasicMessage;
  static LocationAndroidPlatform _instance = MethodChannelLocationAndroid();

  static LocationAndroidPlatform get instance => _instance;

  static set instance(LocationAndroidPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<LocationInfo?> getLocation(
      {int timeout = 5, bool useLastKnownLocation = false}) {
    throw UnimplementedError('getLocation() has not been implemented.');
  }

  Future<bool> checkGPS() {
    throw UnimplementedError('checkGPS() has not been implemented.');
  }

  Future<void> toSettingsTurnOnGPS() {
    throw UnimplementedError('toSettingsTurnOnGPS() has not been implemented.');
  }

  Future<bool> checkLocationPermission() {
    throw UnimplementedError(
        'checkLocationPermission() has not been implemented.');
  }

  Future<void> requestLocationPermission() {
    throw UnimplementedError(
        'requestLocationPermission() has not been implemented.');
  }

  Future<LocationInfo?> getLastKnownLocation() async {
    throw UnimplementedError(
        'getLastKnownLocation() has not been implemented.');
  }

  Future<void> getLocationListener(Function(LocationInfo) callback,
      {int? locationUpdateTime, int? locationUpdateDistance}) {
    throw UnimplementedError('getLocationListener() has not been implemented.');
  }

  Future<void> cancelLocationListener() {
    throw UnimplementedError(
        'cancelLocationListener() has not been implemented.');
  }
}


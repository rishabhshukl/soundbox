import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'soundbox_platform_interface.dart';

/// An implementation of [SoundboxPlatform] that uses method channels.
class MethodChannelSoundbox extends SoundboxPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('soundbox');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

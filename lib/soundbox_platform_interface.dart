import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'soundbox_method_channel.dart';

abstract class SoundboxPlatform extends PlatformInterface {
  /// Constructs a SoundboxPlatform.
  SoundboxPlatform() : super(token: _token);

  static final Object _token = Object();

  static SoundboxPlatform _instance = MethodChannelSoundbox();

  /// The default instance of [SoundboxPlatform] to use.
  ///
  /// Defaults to [MethodChannelSoundbox].
  static SoundboxPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SoundboxPlatform] when
  /// they register themselves.
  static set instance(SoundboxPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

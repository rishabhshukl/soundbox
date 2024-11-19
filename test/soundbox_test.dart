import 'package:flutter_test/flutter_test.dart';
import 'package:soundbox/soundbox.dart';
import 'package:soundbox/soundbox_platform_interface.dart';
import 'package:soundbox/soundbox_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSoundboxPlatform
    with MockPlatformInterfaceMixin
    implements SoundboxPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SoundboxPlatform initialPlatform = SoundboxPlatform.instance;

  test('$MethodChannelSoundbox is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSoundbox>());
  });

  test('getPlatformVersion', () async {
    Soundbox soundboxPlugin = Soundbox();
    MockSoundboxPlatform fakePlatform = MockSoundboxPlatform();
    SoundboxPlatform.instance = fakePlatform;

    expect(await soundboxPlugin.getPlatformVersion(), '42');
  });
}

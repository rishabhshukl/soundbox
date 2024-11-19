
import 'soundbox_platform_interface.dart';

class Soundbox {
  Future<String?> getPlatformVersion() {
    return SoundboxPlatform.instance.getPlatformVersion();
  }
}

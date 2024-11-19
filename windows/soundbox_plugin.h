#ifndef FLUTTER_PLUGIN_SOUNDBOX_PLUGIN_H_
#define FLUTTER_PLUGIN_SOUNDBOX_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace soundbox {

class SoundboxPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  SoundboxPlugin();

  virtual ~SoundboxPlugin();

  // Disallow copy and assign.
  SoundboxPlugin(const SoundboxPlugin&) = delete;
  SoundboxPlugin& operator=(const SoundboxPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace soundbox

#endif  // FLUTTER_PLUGIN_SOUNDBOX_PLUGIN_H_

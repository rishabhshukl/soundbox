#include "include/soundbox/soundbox_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "soundbox_plugin.h"

void SoundboxPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  soundbox::SoundboxPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

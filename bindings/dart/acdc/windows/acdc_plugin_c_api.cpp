#include "include/acdc/acdc_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "acdc_plugin.h"

void AcdcPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  acdc::AcdcPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

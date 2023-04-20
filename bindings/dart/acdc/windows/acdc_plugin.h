#ifndef FLUTTER_PLUGIN_ACDC_PLUGIN_H_
#define FLUTTER_PLUGIN_ACDC_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace acdc {

class AcdcPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  AcdcPlugin();

  virtual ~AcdcPlugin();

  // Disallow copy and assign.
  AcdcPlugin(const AcdcPlugin&) = delete;
  AcdcPlugin& operator=(const AcdcPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace acdc

#endif  // FLUTTER_PLUGIN_ACDC_PLUGIN_H_

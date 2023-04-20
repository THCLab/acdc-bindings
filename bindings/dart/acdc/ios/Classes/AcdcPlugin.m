#import "AdccPlugin.h"
#if __has_include(<acdc/acdc-Swift.h>)
#import <acdc/acdc-Swift.h>
#else
#import "acdc-Swift.h"
#endif

@implementation AcdcPlugin
+ (void)registerWithRegistrar:(NSOBject<FlutterPluginRegistrar>*)registrar {
    [SwiftAcdcPlugin registerWithRegistrar:registrar];
}
@end

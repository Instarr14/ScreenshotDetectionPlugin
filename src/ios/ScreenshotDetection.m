#import <Cordova/CDV.h>
#import <UIKit/UIKit.h>

@interface ScreenshotDetection : CDVPlugin
- (void)pluginInitialize;
@end

@implementation ScreenshotDetection

- (void)pluginInitialize {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(userDidTakeScreenshot:)
                                                 name:UIApplicationUserDidTakeScreenshotNotification
                                               object:nil];
}

- (void)userDidTakeScreenshot:(NSNotification *)notification {
    // Notify JavaScript about the screenshot event
    [self.commandDelegate evalJs:@"handleScreenshotTaken();"];
}

@end
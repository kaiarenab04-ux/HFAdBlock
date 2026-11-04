// Tweak.x
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

%hook MAAdView
- (void)loadAd {}
- (void)startAutoRefresh {}
%end
%hook MAInterstitialAd
- (void)showAd {}
- (BOOL)isReady { return NO; }
%end
%hook MARewardedAd
- (BOOL)isReady { return YES; }
- (void)showAd {}
%end
%hook GADInterstitialAd
- (void)presentFromRootViewController:(id)arg1 {}
%end
%hook GADBannerView
- (void)loadRequest:(id)arg1 {}
%end
%hook UADSViewController
- (void)viewDidLoad {
    %orig;
    [self dismissViewControllerAnimated:NO completion:nil];
}
%end
%hook UnityAds
+ (void)show:(id)arg1 placementId:(id)arg2 showDelegate:(id)arg3 {}
+ (BOOL)isReady:(id)arg1 { return NO; }
%end
%hook IronSource
+ (void)showInterstitial {}
+ (void)showInterstitial:(id)arg1 {}
+ (BOOL)hasInterstitial { return NO; }
%end

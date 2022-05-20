#import <Foundation/Foundation.h>

#define XLOG(log, ...)	NSLog(@"[MyBusNoAds] " log, ##__VA_ARGS__)

%hook GDTUnifiedNativeAdMediator
- (void)loadAd {}
%end
%hook ZhanZhanResultViewController
- (void)loadAd {}
%end
%hook AdManger
- (void)loadAd {}
- (void)loadAd:(bool)load {}
- (void)startTimer{}
%end
%hook GDTNativeExpressAdImp
- (void)loadAd {}
%end
%hook RealtimeViewController
- (void)loadAd {}
%end
%hook GDTSplashAd
- (void)loadAd {}
- (_Bool)isAdValid { return NO; }
- (void)loadAdAndShowFullScreenInWindow:(id)arg1 withLogoImage:(id)arg2 skipView:(id)arg3 {}
%end
%hook HomeViewController
- (void)loadAd {}
%end
%hook GDTUnifiedInterstitialAdImp_Old
- (void)loadAd {}
%end
%hook GDTNativeExpressAdMediator
- (void)loadAd {}
%end
%hook UMUnionFloatingIconAdView
- (void)loadAd {}
%end
%hook UMUnionBannerAdView
- (void)loadAd {}
%end
%hook GDTUnifiedNativeAd
- (void)loadAd {}
%end
%hook MBSerialAdLoad
- (void)loadAd {}
%end
%hook GDTMBaseAdMediator
- (void)loadAd {}
%end
%hook GDTUnifiedInterstitialAdMediator
- (void)loadAd {}
%end
%hook GDTSplashAdAdapter
- (void)loadAd {}
%end
%hook GDTBaseIMP
- (void)loadAd {}
%end
%hook UnifiedInterstitialAdManager
- (void)loadAd {}
%end
%hook GDTUnifiedInterstitialAdAdapter
- (void)loadAd {}
%end
%hook GDTRewardVideoAdAdapter
- (void)loadAd {}
%end
%hook GDTRewardVideoAd
- (void)loadAd {}
%end
%hook GDTRewardVideoAdImp
- (void)loadAd {}
%end
%hook GDTUnifiedNativeAdImp
- (void)loadAd {}
%end
%hook GDTUnifiedInterstitialAd
- (void)loadAd {}
%end
%hook GDTUnifiedInterstitialAdImp
- (void)loadAd {}
%end
%hook UMUnionIntersititialAd
- (void)loadAd {}
%end
%hook UMUnionNativeAd
- (void)loadAd {}
%end
%hook UMUnionFloatingIconAd
- (void)loadAd {}
%end
%hook UMUnionBannerAd
- (void)loadAd {}
%end
%hook GDTSplashAdImp
- (void)loadAd:(bool)load {}
%end
%hook GDTSplashAdMediator
- (void)loadAd:(bool)load {}
%end
%hook BUNativeExpressAdManager
- (void)loadAd:(bool)load {}
%end
%hook GDTNativeExpressAd
- (void)loadAd:(bool)load {}
%end
%hook BaiduMobAdInterstitial
- (void)loadAd:(bool)load {}
%end

%ctor {
	XLOG(@"loaded in %s (%d)", getprogname(), getpid());

	// Add any personal initializations
	%init();
}
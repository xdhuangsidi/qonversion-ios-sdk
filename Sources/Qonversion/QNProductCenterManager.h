#import <Foundation/Foundation.h>
#import "QNLaunchResult.h"

@class QNLaunchResult;
@protocol QNPromoPurchasesDelegate;

NS_ASSUME_NONNULL_BEGIN

@interface QNProductCenterManager : NSObject

- (void)setPromoPurchasesDelegate:(id<QNPromoPurchasesDelegate>)delegate;

- (void)launchWithCompletion:(nullable QNLaunchCompletionHandler)completion;
- (void)checkPermissions:(QNPermissionCompletionHandler)completion;
- (void)purchase:(NSString *)productID completion:(QNPurchaseCompletionHandler)completion;
- (void)restoreWithCompletion:(QNRestoreCompletionHandler)completion;

- (void)products:(QNProductsCompletionHandler)completion;
- (void)checkTrialIntroEligibilityForProductIds:(NSArray<NSString *> *)productIds completion:(QNEligibilityCompletionHandler)completion;
- (void)offerings:(QNOfferingsCompletionHandler)completion;
- (void)experiments:(QNExperimentsCompletionHandler)completion;

- (void)launch:(void (^)(QNLaunchResult * _Nullable result, NSError * _Nullable error))completion;

@end

NS_ASSUME_NONNULL_END

//
//  QNOfferings.m
//  Qonversion
//
//  Created by Surik Sarkisyan on 05.01.2021.
//  Copyright © 2021 Qonversion Inc. All rights reserved.
//

#import "QNOfferings.h"
#import "QNOffering.h"
#import "QNOfferings+Protected.h"
#import "QNOffering.h"

@interface QNOfferings ()

@property (nonatomic, copy) NSDictionary<NSString *, QNOffering *> *offeringsMap;

@end

@implementation QNOfferings

- (instancetype)initWithMainOffering:(QNOffering *)offering availableOfferings:(NSArray<QNOffering *> *)availableOfferings {
  self = [super init];
  
  if (self) {
    _main = offering;
    _availableOfferings = availableOfferings;
    [self configureMapForOfferings:availableOfferings];
  }
  
  return self;
}

- (void)configureMapForOfferings:(NSArray<QNOffering *> *)offerings {
  NSMutableDictionary *offeringsDict = [NSMutableDictionary new];
  
  for (QNOffering *offering in offerings) {
    offeringsDict[offering.identifier] = offering;
  }
  
  _offeringsMap = [offeringsDict copy];
}

- (nullable QNOffering *)offeringForIdentifier:(NSString *)offeringIdentifier {
  return self.offeringsMap[offeringIdentifier];
}

@end

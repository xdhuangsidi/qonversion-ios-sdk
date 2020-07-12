#import "QNConstants.h"
#import "QNProperties.h"
#import "QNUtils.h"

@implementation QNProperties

+ (nullable NSString *)keyForProperty:(QNProperty) property {
  NSString *key = NULL;
  switch (property) {
    case QNPropertyEmail:
      key = @"_q_email";
      break;
    case QNPropertyName:
      key = @"_q_name";
      break;
    case QNPropertyPremium:
      key = @"_q_premium";
      break;
  }
  
  return key;
}

+ (BOOL)checkValue:(NSString *)value {
  return ![QNUtils isEmptyString:value];
}

+ (BOOL)checkProperty:(NSString *)property {
  if ([QNUtils isEmptyString:property]) {
    return NO;
  }
  
  NSRange range = [property rangeOfString:keyQNPropertyReg options:NSRegularExpressionSearch];
  return range.location != NSNotFound;
}

@end

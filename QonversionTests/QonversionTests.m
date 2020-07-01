#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "Qonversion.h"
#import "XCTestCase+TestJSON.h"
#import "UserInfo.h"

@interface Qonversion (Tests)

+ (NSURLRequest *)makePostRequestWithEndpoint:(NSString *)endpoint andBody:(NSDictionary *)body;

@end

@interface QonversionTests : XCTestCase

@end

@implementation QonversionTests

- (void)setUp {
    [super setUp];
    
    // Set default value before
    [Qonversion setDebugMode:NO];
    [Qonversion launchWithKey:@"test_key"];
    
}

- (void)testThatQonversionLauch {
    XCTAssertNotNil(@"");
}

@end

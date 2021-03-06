//
//  ReactView.m
//  embedded-react-native
//
//  Created by 李孟純 on 3/8/16.
//  Copyright © 2016 limengchun. All rights reserved.
//

#import "ReactView.h"

#import "RCTRootView.h"

@implementation ReactView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        NSURL *jsCodeLocation;
        
        /**
         * Loading JavaScript code - uncomment the one you want.
         *
         * OPTION 1
         * Load from development server. Start the server from the repository root:
         *
         * $ npm start
         *
         * To run on device, change `localhost` to the IP address of your computer
         * (you can get this by typing `ifconfig` into the terminal and selecting the
         * `inet` value under `en0:`) and make sure your computer and iOS device are
         * on the same Wi-Fi network.
         */
        
        jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios&dev=true"];
        
        /**
         * OPTION 2
         * Load from pre-bundled file on disk. The static bundle is automatically
         * generated by "Bundle React Native code and images" build step.
         */
        
        //   jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
        
        RCTRootView * rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                             moduleName:@"SimpleApp"
                                                      initialProperties:nil
                                                          launchOptions:nil];
        
        [self addSubview:rootView];
        
        rootView.frame = self.bounds;
        
    }
    return self;
}


@end

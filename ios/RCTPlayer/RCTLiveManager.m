//
//  RCTLiveManager.m
//  RCTPlayer
//
//  Created by uking on 2017/12/8.
//  Copyright © 2017年 uking. All rights reserved.
//

#import "RCTLiveManager.h"
#import "RCTLive.h"
#import "RCTBridge.h"

@implementation RCTLiveManager
RCT_EXPORT_MODULE();

@synthesize bridge = _bridge;

- (UIView *)view
{
    return [[RCTLive alloc] initWithEventDispatcher:self.bridge.eventDispatcher];
}
/*
 - (NSArray *)customDirectEventTypes
 {
 return @[
 @"onLoading",
 @"onReady",
 @"onPaused",
 @"onShutdown",
 @"onError",
 @"onPlaying",
 @"onAutoReconnecting",
 @"onCompleted"
 ];
 }
 */
- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}



RCT_EXPORT_VIEW_PROPERTY(source, NSDictionary);
RCT_EXPORT_VIEW_PROPERTY(paused, BOOL);
RCT_EXPORT_VIEW_PROPERTY(muted, BOOL);
RCT_EXPORT_VIEW_PROPERTY(volume, float);

RCT_EXPORT_VIEW_PROPERTY(onLoading, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onReady, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onPaused, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onStop, RCTBubblingEventBlock);
//RCT_EXPORT_VIEW_PROPERTY(onError, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onPlaying, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onAutoReconnecting, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onProg, RCTBubblingEventBlock);

@end

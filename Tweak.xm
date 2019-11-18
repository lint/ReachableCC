@interface SBControlCenterController
+(id) sharedInstance;
-(void) presentAnimated:(BOOL) arg1;
@end

%hook SBReachabilityManager

-(void) toggleReachability {

[[%c(SBControlCenterController) sharedInstance] presentAnimated:YES];

}

%end
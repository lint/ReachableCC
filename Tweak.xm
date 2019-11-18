@interface SBControlCenterController;
+(id) sharedInstance;
-(void) presentAnimated:(BOOL) arg1;
-(void) dismissAnimated:(BOOL) arg1;
-(BOOL) isPresented;
@end

%hook SBReachabilityManager

-(void) toggleReachability {

	id ccController = [%c(SBControlCenterController) sharedInstance];
	if ([ccController isPresented]){
		[ccController dismissAnimated:YES];
	} else {
		[ccController presentAnimated:YES];
	}

}

%end
//IIFE 匿名函数自执行表达式

(function(exports){
 
 //
 kGetCurrentVCFromRootVc = function(rootVC){
 var currentVC;
 if([rootVC presentedViewController]){
 rootVC = [rootVC presentedViewController];
 }
 
 if([rootVC isKindOfClass:[UITabBarController class]]){
 currentVC = kGetCurrentVCFromRootVc(rootVC.selectedViewController);
 }else if([rootVC isKindOfClass:[UINavigationController class]]){
 currentVC = kGetCurrentVCFromRootVc(rootVC.visibleViewController);
 }else{
 currentVC = rootVC;
 }
 
 return currentVC;
 };


 //1 
 kRootvc = function(){
 return UIApp.keyWindow.rootViewController;
 };
 
 //2
 kKeyWindow = function(){
 return UIApp.keyWindow;
 };
 
 //3
 kCurrentVC = function(){
 return kGetCurrentVCFromRootVc(kRootvc());
 };

 //4
 kAPPID = [NSBundle mainBundle].bundleIdentifier,
 kAPPPATH = [NSBundle mainBundle].bundlePath,

 //5
 
 })(exports);



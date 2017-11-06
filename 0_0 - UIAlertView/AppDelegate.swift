//
//  AppDelegate.swift
//  0_0 - Empty Template (Swift)
//
//  URL: http://stackoverflow.com/questions/2662745/get-name-of-current-view-residing-in-a-uiwindow

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var timer:NSTimer!;  //! means 'i promise I'll initialize before use
    

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        self.window = UIWindow.init(frame: UIScreen.mainScreen().bounds);
        
        self.window?.backgroundColor = UIColor.whiteColor();
        
        let viewController:ViewController = ViewController();
        
        viewController.view.translatesAutoresizingMaskIntoConstraints = false;
        
        self.window?.rootViewController = viewController;
        
        self.window?.makeKeyAndVisible();
        
        print("AppDelegate.application():          Application launch complete");
        
        //Start the countdown timer
        self.timer = NSTimer.scheduledTimerWithTimeInterval(1,
                                                            target:       self,
                                                            selector:     "displayAlert",
                                                            userInfo:     nil,
                                                            repeats:      false);
        
        
        return true;
    }

    
    func displayAlert() {
        print("poo?");
        let alert:UIAlertController = UIAlertController(title:          "Displayed Message!",
                                                        message:        "Eww this is complicated...",
                                                        preferredStyle: UIAlertControllerStyle.Alert);
        
        alert.addAction(UIAlertAction(title:   "Sorry, I'm made by Apple, so...",
                                      style:   UIAlertActionStyle.Cancel,
                                      handler: nil));
  
        window?.rootViewController?.presentViewController(alert,
                                                          animated:true,
                                                          completion:nil);
        return;
    }

    
    func applicationWillResignActive(application:    UIApplication) {return;}
    func applicationDidEnterBackground(application:  UIApplication) {return;}
    func applicationWillEnterForeground(application: UIApplication) {return;}
    func applicationDidBecomeActive(application:     UIApplication) {return;}
    func applicationWillTerminate(application:       UIApplication) {return;}
}

